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
move just one step up or one step down and not more than that. for
example if the last header had lever 3, the next one cannot have a
level less than 4

-}

amended :: Block -> [Block] -> [Block]
amended h [] = []
amended h (b@(Header _ _ _):bs) = additional h b <> amended b bs 
amended h (b:bs) = b:amended h bs

additional :: Block -> Block -> [Block]
additional (Header expected _ _) h@(Header available _ _) = 
  let padding n = Header n ("", [], []) [Str "header added by pandoc"]
  in map padding [expected..available-1] <> [h]

amend = amended (Header 1 ("", [], []) [])

f :: Pandoc -> Pandoc
f (Pandoc m b) = Pandoc m (amend b)

main = BL.getContents >>=
    BL.putStr . encode . f . either error id .
    eitherDecode'

