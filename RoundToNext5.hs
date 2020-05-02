roundToNext5 :: Int -> Int
roundToNext5 n
  | n `rem` 5 == 0 = n
  | otherwise = head $ nextDiv5
  where
    nextDiv5 = [y | y <- [n + 1..n + 4], y `rem` 5 == 0]

main = do
    print $ roundToNext5  0  --  0
    print $ roundToNext5  1  --  5
    print $ roundToNext5  3  --  5
    print $ roundToNext5  5  --  5
    print $ roundToNext5  7  -- 10
    print $ roundToNext5 39  -- 40
