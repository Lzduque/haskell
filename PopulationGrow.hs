-- p0, percent, aug (inhabitants coming or leaving each year), p (population to surpass)

nbYear :: Int -> Double -> Int -> Int -> Int
nbYear = countYears 1

countYears :: Int -> Int -> Double -> Int -> Int -> Int
countYears years p0 percent aug p
    | newPop >= p = years
    | otherwise = countYears (years + 1) newPop percent aug p
    where
        newPop = floor $ fromIntegral p0 + (fromIntegral p0 * percent / 100) + fromIntegral aug

main = do
    print $ nbYear 1500 5 100 5000 -- 15
    print $ nbYear 1500000 2.5 10000 2000000 -- 10
    print $ nbYear 1500000 0.25 1000 2000000 -- 94
    print $ nbYear 1500000 0.0 10000 2000000 -- 50
