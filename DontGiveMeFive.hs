dontGiveMeFive :: Int -> Int -> Int
dontGiveMeFive start end = length nums
    where
        nums = [x | x <- [start..end], '5' `notElem` show x]

main = do
    print $ dontGiveMeFive 1 9  -- 8
    print $ dontGiveMeFive 4 17 -- 12