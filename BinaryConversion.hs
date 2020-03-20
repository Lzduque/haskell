-- Given an array of ones and zeroes, convert the equivalent binary value to an integer.
-- Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1.

toNumber :: [Int] -> Int
toNumber = foldl (\acc x -> binary x + acc) 0
  . addIndexes
  . reverse

addIndexes :: [Int] -> [(Int, Int)]
addIndexes x = zip x y
  where y = [0..]

binary :: (Int, Int) -> Int
binary (x, y) = x * 2 ^ y

main = do
  print $ toNumber [0, 0, 0, 1] -- 1
  print $ toNumber [0, 0, 1, 0] -- 2
  print $ toNumber [0, 1, 0, 1] -- 5
  print $ toNumber [1, 0, 0, 1] -- 9
  print $ toNumber [0, 1, 1, 0] -- 6
  print $ toNumber [1, 1, 1, 1] -- 15
  print $ toNumber [1, 0, 1, 1] -- 11
  print $ toNumber [0, 0, 1, 0, 1, 0, 1, 0, 1, 0] -- 170
  print $ toNumber [1, 0, 0, 1, 1, 0, 0] -- 76
  print $ toNumber [0, 0, 1, 0, 0, 0, 0] -- 16