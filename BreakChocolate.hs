breakChocolate :: Int -> Int -> Int
breakChocolate n m 
    | m == 1 && n == 1 = 0
    | m <= 0 || n <= 0 = 0
    | otherwise = (n - 1) + (n * (m - 1))

main = do
    print $ breakChocolate 5 5 -- 24
    print $ breakChocolate 1 1 -- 0
    print $ breakChocolate 2 1 -- 1
    print $ breakChocolate 3 1 -- 2
