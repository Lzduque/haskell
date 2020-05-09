import Data.Char (toLower)
import Data.List (sort)

isAnagramOf :: String -> String -> Bool
isAnagramOf test original
    | normalize test == normalize original = True
    | otherwise = False
    where
        normalize xs = sort $ map toLower xs


main = do
    print $ "foefet" `isAnagramOf` "toffee" -- True
    print $ "ToFfeE" `isAnagramOf` "toffee" -- True  -- case insenitive!
    print $ "Hello"  `isAnagramOf` "World"  -- False
    print $ "apple"  `isAnagramOf` "pale"  -- False
