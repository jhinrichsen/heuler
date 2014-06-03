-- Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
module Euler48 where

main = print s
    where s = (reverse . take 10 . reverse) $ show result
          result = sum $ map (\n -> n^n) range
          range = [1..1000] :: [Integer]