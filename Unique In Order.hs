import Data.List

uniqueInOrder :: Eq a => [a] -> [a]
uniqueInOrder = foldl filterDuplicates []

filterDuplicates :: Eq a => [a] -> a -> [a]
filterDuplicates acc cur
  | null acc = [cur]
  | cur == last acc = acc
  | otherwise = acc ++ [cur]

main =
  do
    print (uniqueInOrder "AAAABBBCCDAABBB" == "ABCDAB")
