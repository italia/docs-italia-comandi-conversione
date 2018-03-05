#!/usr/bin/env runhaskell
import Text.Pandoc.JSON
import Text.Pandoc.Definition
import Data.List

r :: Block -> [Block]
r (Div _ b)   = b
r b           = [b]

main = toJSONFilter r
