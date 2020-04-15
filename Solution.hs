import Data.List 

solution :: String -> String -> Bool
solution a b = b `isSuffixOf` a

main = do
    print $ solution "abcde" "cde" -- True
    print $ solution "abcde" "abc" -- False
    print $ solution "abcde" "" -- True