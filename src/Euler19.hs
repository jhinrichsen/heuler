-- How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
module Euler19 where

import           Data.Time                      (fromGregorian)
import           Data.Time.Calendar.OrdinalDate (sundayStartWeek)

main = print n
    where n = length $ filter isSunday prospects
          isSunday d = 0 == snd (sundayStartWeek d)
          prospects = [ fromGregorian year month 1 | year <- [1901..2000], month <- [1..12]]
