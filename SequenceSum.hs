import Data.List (intercalate)

sequenceSum :: Int -> String
sequenceSum x 
    | x == 0 = "0 = 0"
    | x < 0 = show x ++ " < 0"
    | otherwise = operations ++ " = " ++ (show $ sum nums)
    where
        nums = [0..x]
        operations = intercalate "+" $ map show nums

main = do
    print $ sequenceSum 6 -- "0+1+2+3+4+5+6 = 21"
    print $ sequenceSum (-14) -- "-14 < 0"
    print $ sequenceSum 0 -- "0 = 0"
