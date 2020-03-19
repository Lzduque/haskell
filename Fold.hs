-- squares :: [Int] -> Int
-- squares = foldl (\acc x -> acc + x * x) 0

-- main = print $ squares [3, 4, 5]


rev :: [a] -> [a]
rev = foldl (\acc x -> x : acc) []

main = print $ rev "spot on"
