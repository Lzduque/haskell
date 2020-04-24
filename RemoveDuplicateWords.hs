import Data.List (nub)

removeDuplicateWords :: String -> String
removeDuplicateWords = unwords . nub . words

main = do
    print $ removeDuplicateWords "alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta" -- "alpha beta gamma delta"
    print $ removeDuplicateWords "my cat is cat fat" -- "my cat is fat"
