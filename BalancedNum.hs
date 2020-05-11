import Data.List.Split (divvy)

balancedNum :: Int -> String
balancedNum x 
    | isOdd && isBalanced lOdd = "Balanced"
    | isEven && isBalanced lEven = "Balanced"
    | otherwise = "Not Balanced"
    where
        list = divvy 1 1 $ show x
        isOdd = odd $ length list
        isEven = even $ length list
        lOdd = round ((fromIntegral $ (length list - 1)) /2)
        lEven = round ((fromIntegral $ (length list - 2)) /2)
        left l = take l list
        right l = take l (reverse list)
        sumL l = sum $ map (read :: String -> Int) (left l)
        sumR l = sum $ map (read :: String -> Int) (right l)
        isBalanced l = sumL l == sumR l

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