#!/usr/bin/env runhaskell
import Text.Pandoc.JSON
import qualified Data.ByteString.Lazy as BL
import Text.Pandoc.Definition
import Data.Aeson
import Data.List
import Data.Monoid ((<>))

mergeCodes :: [Block] -> [Block]
mergeCodes (CodeBlock a1 s1:CodeBlock a2 s2:rest) = mergeCodes shortened
  where shortened = CodeBlock a s:rest
        a = a1
        s = s1 <> "\n" <> s2
mergeCodes (x:rest) = x:mergeCodes rest
mergeCodes [] = []

f :: Pandoc -> Pandoc
f (Pandoc m b) = Pandoc m (mergeCodes b)

main = BL.getContents >>=
    BL.putStr . encode . f . either error id .
    eitherDecode'

