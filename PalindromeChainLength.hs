import Data.List.Split (divvy)

palindromeChainLength :: Integer -> Integer
palindromeChainLength x = getPalindrome (x, 0)

getPalindrome :: (Integer, Integer) -> Integer
getPalindrome (x,c)
    | x == y = c
    | otherwise = getPalindrome ((x + y), c + 1)
    where
        y = read . concat . reverse . divvy 1 1 $ show x :: Integer

main = do
    print $ palindromeChainLength 87 -- 4
