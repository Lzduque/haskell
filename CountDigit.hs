nbDig :: Int -> Int -> Int
nbDig n d = length $ filter (\x -> x == letter) literals
    where
        letter = head $ show d
        nums = map (\x -> x^2) [0..n]
        literals = concat $ map show nums

main = do
    print $ nbDig 5750 0 -- 4700
    print $ nbDig 11011 2 -- 9481
    print $ nbDig 12224 8 -- 7733
    print $ nbDig 11549 1 -- 11905