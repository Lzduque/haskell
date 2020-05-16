import Data.List.Split (chunksOf)

removeUrlAnchor :: String -> String
removeUrlAnchor = concat . takeWhile (/= "#") . chunksOf 1

main = do
    print $ removeUrlAnchor "www.codewars.com#about" -- "www.codewars.com"