-- Find the sum of all the multiples of 3 or 5 below 1000.
module Euler1 where

main = print euler1
    where euler1 = sum $ map sum [[3, 6..n],
                                  [5, 10..n],
                                  [(-15), (-30)..(-n)]]
          n = 999
