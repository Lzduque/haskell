import Data.Char (toLower)
import Data.List (sort)

isAnagramOf :: String -> String -> Bool
isAnagramOf test original
    | first == second = True
    | otherwise = False
    where
        first = sort $ map toLower test
        second = sort $ map toLower original


main = do
    print $ "foefet" `isAnagramOf` "toffee" -- True
    print $ "ToFfeE" `isAnagramOf` "toffee" -- True  -- case insenitive!
    print $ "Hello"  `isAnagramOf` "World"  -- False
    print $ "apple"  `isAnagramOf` "pale"  -- False
