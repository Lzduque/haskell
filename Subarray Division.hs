-- we have segments and want to divide them, each segment has a number
-- they have to match the following criteria:
-- the length of the segments matches the birth month, which means, if the month = 2, that we can only add up 2 segments?
-- the sim of the integers from each piece has to == the birth day, so if the birthday = 4, a possible answer is 2, 2 or 1,3 
-- this function returns a Integer, which is the number of possible answers.
-- as a human thinking about how to do it manually:
-- analize in groups of length m, analize if the group can add up to d
-- 

import Data.List.Split

birthday s d m = foldl (\acc cur -> addsUp d acc cur) 0 combos
 where
  combos = divvy m 1 s

addsUp :: Int -> Int -> [Int] -> Int
addsUp d acc cur
 | sum cur == d = acc + 1
 |otherwise = acc


main = do
 print (birthday [2,2,1,3,2] 4 2) -- should be '2'
 print "should be 2"  