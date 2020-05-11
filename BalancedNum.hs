import Data.List.Split (divvy)

balancedNum :: Int -> String
balancedNum x 
    | isBalanced = "Balanced"
    | otherwise = "Not Balanced"
    where
        list = divvy 1 1 $ show x
        l = (length list - 1) `div` 2
        left = take l list
        right = take l (reverse list)
        sumL = sum $ map (read :: String -> Int) left
        sumR = sum $ map (read :: String -> Int) right
        isBalanced = sumL == sumR

main = do
    print $ balancedNum 7         -- "Balanced"
    print $ balancedNum 959       -- "Balanced"
    print $ balancedNum 13        -- "Balanced"
    print $ balancedNum 432       -- "Not Balanced"
    print $ balancedNum 424       -- "Balanced"
    print $ balancedNum 1024      -- "Not Balanced"
    print $ balancedNum 66545     -- "Not Balanced"
    print $ balancedNum 295591    -- "Not Balanced"
    print $ balancedNum 1230987   -- "Not Balanced"
    print $ balancedNum 56239814  -- "Balanced"