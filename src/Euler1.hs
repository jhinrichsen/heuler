module Euler1 where

    euler1 n = sum $ map sum [ [3, 6..n],
                               [5, 10..n],
                               [(-15), (-30)..(-n)]]

    main = print $ euler1 999