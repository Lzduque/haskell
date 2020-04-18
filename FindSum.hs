findSum :: Int -> Int
findSum n = sum [x | x <- [3..n], x `rem` 3 == 0 || x `rem` 5 == 0]

main = do
    print $ findSum 5 -- 8
    print $ findSum 10 -- 33
    print $ findSum 100 -- 2418
    print $ findSum 1000 -- 234168