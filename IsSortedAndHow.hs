import Data.List (sort)

isSortedAndHow :: [Int] -> String
isSortedAndHow lst
    | lst == sort lst = "yes, ascending"
    | lst == reverse (sort lst) = "yes, descending"
    | otherwise = "no"

main = do
    print $ isSortedAndHow [1,2,3,4,5] -- "yes, ascending"
    print $ isSortedAndHow [1,2,2,4,5] -- "yes, ascending"
    print $ isSortedAndHow [5,4,3,2,1] -- "yes, descending"
    print $ isSortedAndHow [5,4,3,3,1] -- "yes, descending"
    print $ isSortedAndHow [1,2,1,2,1] -- "no"