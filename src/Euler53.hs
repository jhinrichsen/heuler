-- How many, not necessarily distinct, values of nCr, for 1 ≤ n ≤ 100, are greater than one-million?
module Euler53 where

fact :: Integer -> Integer
fact 0 = 1
fact n = product [2..n]

c :: Integer -> Integer -> Integer
c r n
    | r <= n = fact n `div` (fact r * fact (n-r))
    | otherwise = c n r

main = print $ length $ filter (> 10^6) [ c r n | n <- [10..100], r <- [1..n]]
