-- loop :: Int -> IO ()
-- loop n = do
--   if n <= 10
--     then do
--       putStrLn (show (n * n))
--       loop (n + 1)
--     else
--       return ()

-- main :: IO ()
-- main = loop 1

-- fact :: Int -> Int
-- fact n = if n > 0 then n * fact (n - 1) else 1

-- main = print (fact 20)

-- fact :: Int -> Int
-- fact n = if n > 0 then n * fact (n - 1) else 1

-- fullFact :: Integer -> Integer
-- fullFact n = if n > 0 then n * fullFact (n - 1) else 1

-- main = do
--     print (fact 23)
--     print (fullFact 23)

-- fib :: Int -> Int
-- fib n = do
--   if n > 2 then fib (n - 1) + fib (n - 2) else 1

-- main = print (fib 20)

-- Old definition:
-- fib n = if n > 2 then fib (n - 1) + fib (n - 2) else 1
fib n | n == 1    = 1
      | n == 2    = 1
      | otherwise = fib (n - 1) + fib (n - 2)

main = print (fib 20)
