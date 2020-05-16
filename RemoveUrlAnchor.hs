removeUrlAnchor :: String -> String
removeUrlAnchor = takeWhile (/= '#')

main = do
    print $ removeUrlAnchor "www.codewars.com#about" -- "www.codewars.com"