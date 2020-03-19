-- import Data.List (delete)

removeSmallest :: [Int] -> [Int]
removeSmallest xs = delete smallest xs
  where
    smallest = findSmallest xs

findSmallest :: [Int] -> Int
findSmallest = foldr1 min

delete :: Int -> [Int] -> [Int]
delete _ [] = []
delete y (x : xs)
  | x /= y    = x : (delete y xs)
  | otherwise = xs

main = do
  print $ removeSmallest [1,2,3,4,5]
  print $ removeSmallest [5,3,2,1,4]
  print $ removeSmallest [2, 2, 1, 2, 1]
  print $ removeSmallest []
-- main = print $ findSmallest [1,2,3,4,5]