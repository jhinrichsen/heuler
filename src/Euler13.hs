-- Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
module Euler13 where

    main = do
        f <- readFile "euler13.txt"
        let numbers = map read $ lines f :: [Integer]
            s = take 10 . show . sum $ numbers
        putStrLn s