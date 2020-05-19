import Data.List ((\\), nub, tails, inits)

containAllRots :: String -> [String] -> Bool
containAllRots strng arr
  | rotations \\ arr /= [] = False
  | otherwise = True
    where
      rotations = nub $ zipWith (++) (tails strng) (inits strng)

main = do
  print $ containAllRots "bsjq" ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"] -- True
  print $ containAllRots "" [] -- True
  print $ containAllRots "" ["bsjq", "qbsj"] -- True
  print $ containAllRots "XjYABhR" ["TzYxlgfnhf", "yqVAuoLjMLy", "BhRXjYA", "YABhRXj", "hRXjYAB", "jYABhRX", "XjYABhR", "ABhRXjY"] -- False
  print $ containAllRots "12341234" ["DIeF","IeFD","12341234","41234123","34123412","23412341"] -- True