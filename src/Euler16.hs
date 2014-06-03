module Euler16 where

import           Data.Char (ord)

main = print s
    where s = sum $ map digit $ show $ 2 ^ 1000
          digit c = ord c - ord '0'
