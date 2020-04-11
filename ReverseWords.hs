import Data.List (intercalate)
import Data.List.Split (splitOn)

reverseWords :: String -> String
reverseWords xs = intercalate " " inverse
    where
        inverse = map reverse splitted
        splitted = splitOn " " xs

main = do
    print $ reverseWords "An example!" -- "nA !elpmaxe"
    print $ reverseWords "double  spaces" -- "elbuod  secaps"