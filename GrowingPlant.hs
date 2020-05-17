growingPlant :: Int -> Int -> Int -> Int
growingPlant upSpeed downSpeed desiredHeight
    | length nDays < length nNights = length nDays + 1
    | otherwise = length nNights + 1
    where
        days = [1..]
        dayGrowth = zip days $ map (\y -> upSpeed * y - (downSpeed * (y - 1))) days
        nightShrinking = zip days $ map (\y -> (upSpeed - downSpeed) * y) days
        nDays = takeWhile (\(a,b) -> b < desiredHeight) dayGrowth
        nNights = takeWhile (\(a,b) -> b < desiredHeight) nightShrinking

main = do
    print $ growingPlant 100 10 910 -- 10
    print $ growingPlant 10 9 4 -- 1
    print $ growingPlant 5 2 5 -- 1
    print $ growingPlant 5 2 6 -- 2
