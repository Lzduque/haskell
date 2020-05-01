divisors :: Integral a => a -> Int
divisors x = length possibleDivs
    where
        possibleDivs = [y | y <- [1..x], x `rem` y == 0]

main = do
    print $ divisors 1  -- 1
    print $ divisors 4  -- 3
    print $ divisors 5  -- 2
    print $ divisors 12 -- 6
    print $ divisors 30 -- 8  
