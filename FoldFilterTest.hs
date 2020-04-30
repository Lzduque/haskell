import Data.List (foldl')
import Control.Monad (foldM)

sumr :: [Integer] -> Integer 
sumr = foldr (+) 0

suml :: [Integer] -> Integer 
suml = foldl' (+) 0

evens :: [Integer] -> [Integer]
evens = filter (\x -> even x)

sumEvensr :: [Integer] -> Integer
sumEvensr = foldr f 0
    where
        f y ys 
            | even y = y + ys 
            | otherwise = ys

sumEvensl :: [Integer] -> Integer
sumEvensl = foldl' f 0
    where
        f ys y 
            | even y = y + ys 
            | otherwise = ys



sumM :: [Integer] -> IO Integer
sumM = foldM (\acc x -> return $ acc + x) 0

sumEvensM :: [Integer] -> IO Integer
sumEvensM = foldM f 0
    where
        f ys y 
            | even y = return $ y + ys 
            | otherwise = return ys



bigList :: [Integer]
bigList = [1..10000000]


main = do
    print $ sumr [1..10] 
    print $ suml [1..10] 
    print $ evens [1..10]
    print $ sumEvensr [1..10]
    print $ sumEvensl [1..10]
