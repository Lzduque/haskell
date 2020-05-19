import Data.List ((\\), nub)

containAllRots :: String -> [String] -> Bool
containAllRots strng arr
  | rotations \\ arr == [] = True
  | otherwise = False
    where
      l = (length strng) - 1
      rotations = nub $ rotate l strng

rotate :: Int -> String -> [String]
rotate 0 ys = [ys]
rotate _ [] = []
rotate times xs = xs : rotate (times - 1) (tail xs ++ [head xs])

main = do
  print $ containAllRots "bsjq" ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"] -- True
  print $ containAllRots "" [] -- True
  print $ containAllRots "" ["bsjq", "qbsj"] -- True
  print $ containAllRots "XjYABhR" ["TzYxlgfnhf", "yqVAuoLjMLy", "BhRXjYA", "YABhRXj", "hRXjYAB", "jYABhRX", "XjYABhR", "ABhRXjY"] -- False
  print $ containAllRots "12341234" ["DIeF","IeFD","12341234","41234123","34123412","23412341"] -- True