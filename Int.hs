-- import Data.Char

-- toInts :: String -> [Int]
-- toInts [] = []
-- toInts (x : xs) = digitToInt x : toInts xs

-- main = print $ toInts "2013"

import Data.Char

toInts :: String -> [Int]
toInts (c : cs) = digitToInt c : toInts cs
toInts [] = []

acc :: Int -> [Int] -> Int
acc a (x : xs) = acc (a + x) xs
acc a [] = a

sumDig :: String -> Int
sumDig str = acc 0 (toInts str)

main = print $ sumDig "30750"
