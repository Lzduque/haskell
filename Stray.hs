import Data.Sort (sort)

stray :: [Int] -> Int
stray xs
    | a /= b && a/= c = a
    | otherwise = b
    where
        [a, b, c] = take 3 $ sort xs


main = do
    print $ stray [1,1,2] -- 2
    print $ stray [17, 17, 3, 17, 17, 17, 17] -- 3