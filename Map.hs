import Data.Char -- (digitToInt)

-- toInts :: String -> [Int]
-- -- toInts = map (\x -> digitToInt x)
-- toInts = map digitToInt

-- main = print $ toInts "30750"

-- squares :: [Int] -> [Int]
-- squares = map (\x -> x * x)

-- main = print $ squares [1..10]

type Point = (Double, Double)
inCircle2 :: [Point] -> [Point]
inCircle2 = filter (\(a, b) -> sqrt (a * a + b * b) <= 2)

main = print $ inCircle2 [(0, 0), (2, -2), (1, -1), (1.9, 0.1), (10, 1)]
