getSum :: Int -> Int -> Int
getSum a b 
    | b > a = sum [a..b]
    | otherwise = sum [b..a]

main = do
    print $ getSum 0 1 -- 1
    print $ getSum 1 2 -- 3
    print $ getSum 5 (-1) -- 14
    print $ getSum 505 4 -- 127759
    print $ getSum 321 123 -- 44178
    print $ getSum 0 (-1) -- (-1)
    print $ getSum (-50) 0 -- (-1275)
    print $ getSum (-1) (-5) -- (-15)
    print $ getSum (-5) (-5) -- (-5)
    print $ getSum (-505) 4 -- (-127755)
    print $ getSum (-321) 123 -- (-44055)
    print $ getSum 0 0 -- 0
    print $ getSum (-5) (-1) -- (-15)
    print $ getSum 5 1 -- 15
    print $ getSum (-17) (-17) -- (-17)
    print $ getSum 17 17 -- 17