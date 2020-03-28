import Data.Char

toJadenCase :: String -> String
toJadenCase = unwords . map captalize . words

captalize :: String -> String
captalize [] = []
captalize (x:xs) = toUpper x : xs

main = do
    print $ toJadenCase  "The moment that truth is organized it becomes a lie." -- "The Moment That Truth Is Organized It Becomes A Lie."
    print $ toJadenCase  "Three men, six options, don't choose." -- "Three Men, Six Options, Don't Choose."