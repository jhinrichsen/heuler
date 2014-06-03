-- How many starting numbers below ten million will arrive at 89?
module Euler92 where

import           Data.Char (ord)

digit :: Char -> Integer
digit c = fromIntegral $ ord c - ord '0'

squaresum :: Integer -> Integer
squaresum n = sum xs
    where xs = map f $ show n
          f c = n * n
              where n = digit c

last' :: Integer -> Integer
last' 1 = 1
last' 89 = 89
last' n = last' $ squaresum n

main = print n
    where n = length $ filter (== 89) $ map last' l
          l = [1..(10^6 - 1)] :: [Integer]
