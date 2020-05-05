import Data.List.Split (divvy)

palindromeChainLength :: Integer -> Integer
palindromeChainLength x
    | x == y = 0
    | otherwise = 1 + palindromeChainLength (x + y)
    where
        y = read . concat . reverse . divvy 1 1 $ show x :: Integer

main = do
    print $ palindromeChainLength 87 -- 4
