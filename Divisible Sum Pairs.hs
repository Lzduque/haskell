-- as a human I would approach like:
-- first number, i = 0, n = 1
-- once you are analizing the first number we will have to try and pair it with all other numbers -> 
-- second number, possible second number of the pair,
-- j = 1, m = 3
-- n + m = 1 + 3  = 4
--  4 `rem` 3 != 00, therefore this is not a possible response
-- next third number, j = 2, m = 2
-- n + m = 1 + 2  = 3
--  3 `rem` 3 += 00, therefore this is a response!!
-- this goes in the acc -> [[Int]] or is add up to acc +1 -> Int
-- go through the array

divisibleSumPairs :: Int -> Int -> [Int] -> Int
divisibleSumPairs n k ar
 | 

isPair :: Int -> Int-> [Int] -> Int
isPair k h ar = foldl compare 0 ar
 where
  compare acc cur
   | (h + cur) `rem` k == 0 = acc + 1
   | otherwise = acc


main = do
 print (isPair 3 1 [3, 2, 6, 1, 2]) -- should be '2'
 print "should be 2"
 print (divisibleSumPairs 6 3 [1, 3, 2, 6, 1, 2]) -- should be '5'
 print "should be 5"  