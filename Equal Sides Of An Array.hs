module Codewars.G964.FindEven where

-- means that i have to go through the array but know the index i am at and
-- also be able to compare the sum from one side to the other,
-- means i have to know the end of the array even if i haven't gone through it
-- one way of doing it is sum the whole array and using it to compare when i go through it again
-- comapring the sum - cur - the sum so far if it is iqual to the sum so far
-- then return the index
-- the tricky part is to now the index
-- for this I can simply zip and array with indexs to it, so we would be working with touples
-- [(number, index)]

findEvenIndex :: [Int] -> Int
findEvenIndex arr
  | position >= 0 = position
  | otherwise = -1
  where
    size = length arr
    indexes = [0 .. (size - 1)]
    numPosition = zip arr indexes
    arrSum = sum arr
    position = snd (foldl compareSums (0, -1) numPosition)
    compareSums acc cur
      | snd acc > -1 = acc
      | arrSum == fst cur = (fst acc, snd cur)
      | arrSum - fst acc - fst cur == fst acc = (fst acc, snd cur)
      | otherwise = (fst cur + fst acc, snd acc)

-- numPosition =[(20,0),(10,1),(-80,2),(10,3),(10,4),(15,5),(35,6)]
-- arrSum = 20
-- acc = (0,-1) / cur = (20,0) -> acc = (0,0)
-- acc = (0,0) / cur = (10,1) -> acc = (0,0)

main = do
  print $ show (findEvenIndex [20, 10, 30, 10, 10, 15, 35]) ++ " should == 3 " ++ show (findEvenIndex [20, 10, 30, 10, 10, 15, 35] == 3)
  print $ show (findEvenIndex [20, 10, -80, 10, 10, 15, 35]) ++ " should == 0 " ++ show (findEvenIndex [20, 10, -80, 10, 10, 15, 35] == 0)

-- numPosition =[(20, 0), (10, 1), (30, 2), (10, 3), (10, 4), (15, 5), (35, 6)]
-- arrSum = 130
-- acc = (0,0) / cur = (20,0) -> acc = (20,0)
-- acc = (20,0) / cur = (10,1) -> acc = (10 + 20 = 30, 0)
-- acc = (30,0) / cur = (30,2) -> acc = (30 + 30 = 60, 0)
-- acc = (60,0) / cur = (10,3) -> 130 - 60 - 10 = 60 == 60 -> acc = (60, 3)
-- acc = (60,3) / cur = (10, 4) -> 130 - 60 - 10 = 60 == 60 -> ?
