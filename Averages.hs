averages :: Maybe [Double] -> [Double]
averages Nothing = []
averages (Just []) = []
averages (Just [_]) = []
averages (Just (x:y:xs)) = (x + y) / 2 : averages (Just $ y:xs)

main = do
    print $ averages (Just [2, 2, 2, 2, 2])   -- [2.0, 2.0, 2.0, 2.0]
    print $ averages (Just [2, -2, 2, -2, 2]) -- [0.0, 0.0, 0.0, 0.0]
    print $ averages (Just [1, 3, 5, 1, -10]) -- [2.0, 4.0, 3.0, -4.5]