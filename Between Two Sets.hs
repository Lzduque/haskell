import Data.List as List

getTotalX :: [Integer] -> [Integer] -> Integer
getTotalX a b = fromIntegral $ length $ filter (\n -> all (\x -> isFactor x n) b) fromFirst
 where
  merged = List.sort $ a ++ b
  candidates = [(head merged)..(last merged)]
  fromFirst = filter (\n -> all (\x -> isFactor n x) a) candidates

isFactor :: Integer -> Integer -> Bool
isFactor x y = x `rem` y == 00


main = do
  print (getTotalX [2, 4] [16, 32, 96]) -- should be '3'
  print "should be 3"
  print (getTotalX [2, 6] [24, 36]) -- should be '2'
  print "should be 2"

-- maping through numbers, to find the ones that are factors and the others are factors of...
-- n%a == 0 && n%b == 0 ... -> n hasFactor a1
-- a1%n == 0 && a2%n == 0 ... -> a1 isFactor n 

-- how to know the numbers to evaluate? the ns?
-- the elements of the first array are all factors to the number
-- the number is a factor for all the ements of the second array
-- the start of the analized array has to be 0 and it goes up to the bisggest number of both arrays, in the first example, 96
-- [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96]

--  2, first number of the candidates list, has to have as a factor all the numbers in the first array [2, 4]:
--  2 has to be factor of 2 and 4 has to be factor of 2