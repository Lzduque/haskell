import Data.List (nub, sort)

minValue :: [Int] -> Int
minValue = read . concat . map show . sort . nub

main = do
    print $ minValue [1, 3, 1] -- 13
    print $ minValue [4, 7, 5, 7] -- 457
    print $ minValue [4, 8, 1, 4] -- 148
    print $ minValue [5, 7, 9, 5, 7] -- 579
    print $ minValue [6, 7, 8, 7, 6, 6] -- 678
    print $ minValue [5, 6, 9, 9, 7, 6, 4] -- 45679
    print $ minValue [1, 9, 1, 3, 7, 4, 6, 6, 7] -- 134679
    print $ minValue [3, 6, 5, 5, 9, 8, 7, 6, 3, 5, 9] -- 356789
