import Data.Char (isUpper, isAlpha)

capitals :: String -> [Int]
capitals xs
    | xs == "" = []
    | otherwise = map (\x -> fst x) capitals
        where
            capitals = filter (\x -> isUpper (snd x) && isAlpha (snd x)) indexed
            indexed = zip [0..length xs - 1] xs


main = do
    print $ capitals ""         -- []
    print $ capitals " "        -- []
    print $ capitals "\n"       -- []
    print $ capitals "\148704"  -- []
    print $ capitals "CodEWaRs" -- [0,3,4,6]
    print $ capitals "aAbB"     -- [1,3]
    print $ capitals "4ysdf4"   -- []
    print $ capitals "ABCDEF"   -- [0..5]