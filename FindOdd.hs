-- | Given a list, find the [Int] that appears an 
--   odd number of times. The tests will always
--   provide such a number, and the list will
--   always contain at least one element.
findOdd :: [Int] -> Int
findOdd xs = head . map fst $ filter (\(a,b) -> odd b) ocurrences
    where
        ocurrences = nub . map (\x -> (x, length $ filter (\y -> y == x) xs)) $ sort xs 

main = do
    print $ findOdd [1,2,1,4,2,3,4,2,3] -- 2
    print $ findOdd [1,2,1,4,3,4,2] -- 3
    print $ findOdd [7] -- 7
