maxRot :: Integer -> Integer
maxRot n -- your code
    where
        digits = map (\x -> read [x] :: Int) (show n)
        ln = length digits - 1
        firstNum = n
        secondNum = (drop 1 digits) ++ (take 1 digits)
        thirdNum = (take 1 secondNum) ++ (slice 2 ln secondNum) ++ (slice 1 1 secondNum)
        fourthNum = (take 2 thirdNum) ++ (slice 3 ln thirdNum) ++ (slice 2 2 thirdNum)
        fifthNum = (take 3 fourthNum) ++ (slice 4 ln fourthNum) ++ (slice 3 3 fourthNum)

slice :: Int -> Int -> [a] -> [a]
slice from to xs = take (to - from + 1) (drop from xs)

main = do
    print $ maxRot 38458215 85821534
    print $ maxRot 195881031 988103115
    print $ maxRot 896219342 962193428
    print $ maxRot 69418307 94183076