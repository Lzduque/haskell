-- | Takes a non-empty list and returns
--   both maximum and minimum value
minMax :: (Ord a) => [a] -> (a, a)
minMax xs = (minimum xs, maximum xs)

main = do
    print $ minMax [1, 2,  3,  4,  5] -- (1,  5)
    print $ minMax [1, 2, -3,  4,  5] -- (-3, 5)
    print $ minMax [1, 9,  3,  4, -5] -- (-5, 9)
    print $ minMax [4, 5, 29, 54, 4, 0, -214, 542, -64, 1, -3, 6, -6] -- (-214, 542)
    print $ minMax [1..10] -- (1, 10)
