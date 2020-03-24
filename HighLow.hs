import Data.List.Split

highAndLow :: String -> String
highAndLow input = show (maximum nums) ++ " " ++ show (minimum nums) where
  nums = map read . words $ input :: [Int]

main = do
  print $ highAndLow "1 2 3 4 5"  -- "5 1"
  print $ highAndLow "1 2 -3 4 5" -- "5 -3"
  print $ highAndLow "1 9 3 4 -5" -- "9 -5"
