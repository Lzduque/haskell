import Data.List

isAscOrder :: [Int] -> Bool
isAscOrder xs
    | sorted == xs = True
    | otherwise = False
    where
        sorted = sort xs

main = do
    print $ isAscOrder [1, 2, 4, 7, 19] -- True
    print $ isAscOrder [1, 2, 3, 4, 5] -- True
    print $ isAscOrder [1, 6, 10, 18, 2, 4, 20] -- False
    print $ isAscOrder [9, 8, 7, 6, 5, 4, 3, 2, 1] -- False