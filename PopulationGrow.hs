-- p0, percent, aug (inhabitants coming or leaving each year), p (population to surpass)

nbYear :: Int -> Double -> Int -> Int -> Int
nbYear p0 percent aug p = countYears p0 percent aug p years
    where
        years = [1..]

countYears :: Int -> Double -> Int -> Int -> [Int] -> Int
countYears _ _ _ _ [] = 0
countYears p0 percent aug p (y:ys)
    | yearlyGrowth p0 percent aug >= p = y
    | otherwise = countYears (yearlyGrowth p0 percent aug) percent aug p ys

yearlyGrowth :: Int -> Double -> Int -> Int
yearlyGrowth p0 percent aug = floor $ fromIntegral p0 + (fromIntegral p0 * percent / 100) + fromIntegral aug

main = do
    print $ nbYear 1500 5 100 5000 -- 15
    print $ nbYear 1500000 2.5 10000 2000000 -- 10
    print $ nbYear 1500000 0.25 1000 2000000 -- 94
    print $ nbYear 1500000 0.0 10000 2000000 -- 50
