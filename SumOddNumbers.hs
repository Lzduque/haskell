import Data.List (drop)

rowSumOddNumbers :: Integer -> Integer
rowSumOddNumbers n = sum $ take (fromIntegral n) $ drop numsToDrop oddNums
    where
        oddNums = [1,3..]
        lines = [1..lastline]
        lastline = n - 1
        numsToDrop = fromIntegral $ sum lines


main = do
    print $ rowSumOddNumbers 1 -- 1
    print $ rowSumOddNumbers 2 -- 3 + 5 = 8
    print $ rowSumOddNumbers 13 -- 2197
    print $ rowSumOddNumbers 19 -- 6859
    print $ rowSumOddNumbers 99 -- 970299
    print $ rowSumOddNumbers 999 -- 
