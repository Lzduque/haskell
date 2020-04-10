divisors :: (Show a, Integral a) => a -> Either String [a]
divisors a
    | hasDivisors a /= [] = Right $ hasDivisors a
    | otherwise = Left $ show a ++ " is prime"
    where
        hasDivisors a = filter ((==0) . rem a) [2 .. a `div` 2]
        

main = do 
    print $ divisors 3   -- Left "3 is prime"
    print $ divisors 4   -- Right [2]
    print $ divisors 13  -- Left "13 is prime"
    print $ divisors 15  -- Right [3,5]
    print $ divisors 24  -- Right [2,3,4,6,8,12]
    print $ divisors 29  -- Left "29 is prime"
    print $ divisors 253 -- Right [11,23]