import Data.List (group)

stray :: [Int] -> Int
stray xs
    | length filtered == 1 = head $ head filtered
    | otherwise = head $ head $ drop 1 newXs
    where
        newXs = group xs
        filtered = filter (\x -> length x == 1) newXs

main = do
    print $ stray [1,1,2] -- 2
    print $ stray [17,3,17] -- 3
    print $ stray [17, 17, 3, 17, 17, 17, 17] -- 3
    print $ stray [3569,-4614,3569,3569,3569,3569,3569] -- -4614