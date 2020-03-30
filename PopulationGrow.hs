-- p0, percent, aug (inhabitants coming or leaving each year), p (population to surpass)

nbYear :: Int -> Double -> Int -> Int -> Int
nbYear p0 percent aug p = length . takeWhile (< p) $ iterate newPop p0
    where
        newPop pop = floor $ fromIntegral pop + (fromIntegral pop * percent / 100) + fromIntegral aug

main = do
    print $ nbYear 1500 5 100 5000 -- 15
    print $ nbYear 1500000 2.5 10000 2000000 -- 10
    print $ nbYear 1500000 0.25 1000 2000000 -- 94
    print $ nbYear 1500000 0.0 10000 2000000 -- 50
