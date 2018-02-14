#!/usr/bin/env runhaskell
import Text.Pandoc.JSON
import Text.Pandoc.Definition
import Data.List

replaceQuote :: Block -> [Block]
replaceQuote (BlockQuote b) = b
replaceQuote b              = [b]

main = toJSONFilter replaceQuote
