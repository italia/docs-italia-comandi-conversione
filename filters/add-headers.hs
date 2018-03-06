#!/usr/bin/env runhaskell
import Text.Pandoc.JSON
import Text.Pandoc.Walk
import qualified Data.ByteString.Lazy as BL
import Text.Pandoc.Definition (Inline(..))
import Data.Aeson
import Data.List
import Data.Monoid ((<>))
import GHC.Integer (absInteger)

{-

not sure about the precise constraint, my guess is that levels should
move just up or one step down and not more than that. for example if
the last header had lever 3, the next one cannot have a level less
than 4

-}


pandocHeader n = Header n ("", [], []) [Str "header added by pandoc"]

between :: Int -> Int -> [Block]
between last next = map pandocHeader [last+1..next-1]

amended :: Maybe Int -> [Block] -> [Block]
amended Nothing (b@(Header n _ _):bs) = start <> [b] <> amended (Just n) bs 
  where start
          | n == 1 = []
          | otherwise = pandocHeader 1 : between 1 n
amended (Just last) (b@(Header n _ _):bs) = between last n <>
                                            [b] <>
                                            amended (Just n) bs 
amended m (b:bs) = b:amended m bs
amended m [] = []

amend = amended Nothing

f :: Pandoc -> Pandoc
f (Pandoc m b) = Pandoc m (amend b)

main = BL.getContents >>=
    BL.putStr . encode . f . either error id .
    eitherDecode'

