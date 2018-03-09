#!/usr/bin/env runhaskell
import Text.Pandoc.JSON
import Text.Pandoc.Definition
import Data.List

parafy (Plain i:bs) = Para i:bs
parafy b = b

onLists :: ([Block] -> [Block]) -> Block -> Block
onLists f (BulletList i) = BulletList (map f i)
onLists f (OrderedList a i) = OrderedList a (map f i)
onLists f b = b

loosen :: Block -> Block
loosen = onLists parafy

main = toJSONFilter loosen
