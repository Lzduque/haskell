number :: [String] -> [String]
number [] = []
number xs = concatIndex "1" xs

concatIndex :: String -> [String] -> [String]
concatIndex _ [] = []
concatIndex i (x:xs) = (i ++ ": " ++ x) : (concatIndex (show (read i + 1)) xs)

main = do
  print $ number [] -- returns []
  print $ number ["a", "b", "c"] -- returns ["1: a", "2: b", "3: c"]
