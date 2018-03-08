import Control.Monad.State.Strict
import Text.Pandoc.Definition
import Text.Pandoc.JSON
import Data.Monoid ((<>))

{-
        , testGroup "flatten"
          [ testCase "drops all inner styles" $
            flatten (Strong [Emph [Strong [Str "s"]]]) @?=
            [Strong [Str "s"]]
          , testCase "drops outer styles that contain a link" $
            flatten (Strong [Emph [Link ("", [], [])[Str "s"] ("", "")]]) @?=
            [Strong [],Link ("",[],[]) [Str "s"] ("",""),Strong []]
          , testCase "preserves strong text in an emphasis " $
            flatten (Emph [Str "f", Str "s", Strong [Str "d"], Str "l"]) @?=
            [Emph [Str "f", Str "s"], Strong [Str "d"], Emph [Str "l"]]
          , testCase "drops emphasis in a strong inline" $
            flatten (Strong [Str "f", Str "s", Emph [Str "d"], Str "l"]) @?=
            [Strong [Str "f", Str "s", Str "d", Str "l"]]
          , testCase "does not break links" $
            flatten (Link ("", [], [])[Str "f", Strong [Str "d"]] ("", "")) @?=
            [Link ("", [], [])[Str "f", Str "d"] ("", "")]
          , testCase "keeps inlines not matched by dropStyle" $
            flatten (Strong [Str "f", Subscript [Str "d"], Str "l"]) @?=
            [Strong [Str "f", Subscript [Str "d"], Str "l"]]
          , testCase "keeps an image even when it does not contain inlines" $
            flatten (Image ("",[],[]) [] ("image5.jpeg","")) @?=
            [Image ("",[],[]) [] ("image5.jpeg","")]
          ]
-}

data Flattening = Flattening {
  stOuter :: Inline,
  stReady :: [Inline]
  }

type Fla = State Flattening

applyToOuter :: (Inline -> Inline) -> Fla ()
applyToOuter f = do
  outer <- gets stOuter
  modify $ \st -> st{ stOuter = f outer }

clearStOuter :: Fla ()
clearStOuter = applyToOuter (setInlines [])

addReady :: Inline -> Fla ()
addReady i = do
  ready <- gets stReady
  modify $ \st -> st{ stReady = ready <> [i] }

-- | consider contents into `outer` ready and prepare `outer` for new contents
flushOuter :: Fla ()
flushOuter = do
  outer <- gets stOuter
  addReady outer
  clearStOuter

-- | add contents from `inner` into `outer`
collapse :: Inline -> Fla ()
collapse inner = applyToOuter (addContentsTo inner)
  where -- | `addContentsTo first second` will move the contents from
        -- `second` into `first` stripping some inline style and
        -- leaving other inline elements unchanged
        addContentsTo :: Inline -> Inline -> Inline
        addContentsTo i1 i2 = setInlines (getInlines i2 <> dropStyle i1) i2
        dropStyle :: Inline -> [Inline]
        dropStyle (Strong i) = i
        dropStyle (Emph i) = i
        -- other inline constructors correspond to inlines that don't
        -- look ugly or confusing to the user when rendered, for
        -- example Quoted. even if an RST parser wouldn't recognise
        -- them, it seems a good idea to keep them at the moment. more
        -- constructors can be matched here in case we will want to
        -- drop those as well eventually
        dropStyle i = [i]

-- | flush `outer` and `inner`
emerge :: Inline -> Fla ()
emerge inner = do
  flushOuter
  addReady inner

combine :: Inline -> Fla ()
combine i = do
  outer <- gets stOuter -- this inline has been cleared but it does not matter
  case (outer, i) of
    (Link _ _ _, _)    -> collapse i -- preserve outer links
    (_, Link _ _ _)    -> emerge i   -- preserve inner links
    (Strong _, Emph _) -> collapse i -- ignore inner emphs
    (Emph _, Strong _) -> emerge i   -- pull inner strongs out of an emph
    (_, _)             -> collapse i -- by default strip inner markup

-- | emerge some inlines out of the containing one while removing others
emergeCollapse :: [Inline] -> [Inline]
emergeCollapse = concatMap flatten

maybeGetInlines :: Inline -> Maybe [Inline]
maybeGetInlines (Link _ i _)    = Just i
maybeGetInlines (Emph i)        = Just i
maybeGetInlines (Strong i)      = Just i
maybeGetInlines (Strikeout i)   = Just i
maybeGetInlines (Superscript i) = Just i
maybeGetInlines (Subscript i)   = Just i
maybeGetInlines (SmallCaps i)   = Just i
maybeGetInlines (Quoted _ i)    = Just i
maybeGetInlines (Cite _ i)      = Just i
maybeGetInlines (Image _ i _)   = Just i
maybeGetInlines (Span _ i)      = Just i
maybeGetInlines _               = Nothing

getInlines :: Inline -> [Inline]
getInlines = maybe [] id . maybeGetInlines

setInlines :: [Inline] -> Inline -> Inline
setInlines i (Link a _ t)    = Link a i t
setInlines i (Emph _)        = Emph i
setInlines i (Strong _)      = Strong i
setInlines i (Strikeout _)   = Strikeout i
setInlines i (Superscript _) = Superscript i
setInlines i (Subscript _)   = Subscript i
setInlines i (SmallCaps _)   = SmallCaps i
setInlines i (Quoted q _)    = Quoted q i
setInlines i (Cite c _)      = Cite c i
setInlines i (Image a _ t)   = Image a i t
setInlines i (Span a _)      = Span a i
setInlines _ leaf            = leaf

-- | collect a list of inlines combining a containing one with the contents
collectReady :: Fla [Inline]
collectReady = do
  outer <- gets stOuter
  -- remove contained inlines, they will be either collapsed inside
  -- again or pulled out of the nesting
  clearStOuter
  -- combine will not change the type of the outer, it will just
  -- affect its contents
  mapM combine (emergeCollapse $ getInlines outer)
  -- after we went through all contents we could have some contents in
  -- the outer inline, in that case we flush it to the list of ready
  -- ones
  flushOuter
  -- here are our collapsed or emerged inlines
  gets stReady

flatten :: Inline -> [Inline]
flatten o = fst $ runState collectReady (ini o)
  where ini o' = Flattening { stOuter = o', stReady = [] } -- initial state

main = toJSONFilter flatten

