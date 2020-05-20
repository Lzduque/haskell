averages :: Maybe [Double] -> [Double]
averages xs
    | length input /= 0 = avrgs input
    | otherwise = []
    where
        fromJust (Just a) = a
        fromJust Nothing = []
        input = fromJust xs
        avrgs [] = []
        avrgs [x] = []
        avrgs (x:xs) = average x (head xs) : avrgs xs
        average x y = (x + y) / 2

main = do
    print $ averages (Just [2, 2, 2, 2, 2])   -- [2.0, 2.0, 2.0, 2.0]
    print $ averages (Just [2, -2, 2, -2, 2]) -- [0.0, 0.0, 0.0, 0.0]
    print $ averages (Just [1, 3, 5, 1, -10]) -- [2.0, 4.0, 3.0, -4.5]