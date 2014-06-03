-- Which starting number, under one million, produces the longest (Collatz) chain?
module Euler14 where

import Data.List (elemIndex)
import Data.Maybe (fromMaybe)

-- Next collatz element in a Collatz sequence
step n
    | even n = quot n 2
    | otherwise = 3*n+1

cseq :: Int -> [Int] -> [Int]
cseq 1 xs = 1:xs
cseq n xs = cseq (step n) (n:xs)

-- Build a Collatz sequence for given n
collatz :: Int -> [Int]
collatz n = reverse $ cseq n []

-- brute :: Integral
brute = maximum $ map (length . collatz) [1..1000]

-- cl_ :: Integral -> Integral -> Integral
cl_ :: Int -> Int -> Int
cl_ 1 l = l
cl_ n l = cl_ (step n) (l + 1)

-- Length for Collatz sequence for given n
-- cl :: Integral -> Integral
cl n = cl_ n 1

smart = 
    fromMaybe (-1) (elemIndex m l)
        where l = map cl [1..100000]
              m = maximum l

main =
       -- Takes minutes on fpcomplete and runhaskell,
       -- seconds using ghc --make -O2 on a 2013 MacBook Pro
       -- print brute

       -- Index is 0 based, but number is 1 based
       print (smart + 1)
