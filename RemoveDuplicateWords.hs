import Data.List.Split (splitOn)
import Data.Set (fromList, toList)

removeDuplicateWords :: String -> String
removeDuplicateWords = unwords . toList . fromList . splitOn " "

main = do
    print $ removeDuplicateWords "alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta" -- "alpha beta gamma delta"
    print $ removeDuplicateWords "my cat is cat fat" -- "my cat is fat"
