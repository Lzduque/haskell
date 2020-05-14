import Data.List.Split (divvy)

alphabetWar :: String -> String
alphabetWar fight 
    | points > 0 = "Left side wins!"
    | points < 0 = "Right side wins!"
    | otherwise = "Let's fight again!"
    where
        point 'w' = 4
        point 'p' = 3
        point 'b' = 2
        point 's' = 1
        point 'm' = -4
        point 'q' = -3
        point 'd' = -2
        point 'z' = -1
        point _ = 0
        points = sum $ map point fight

main = do
    print $ alphabetWar "z"        -- "Right side wins!"
    print $ alphabetWar "zdqmwpbs" -- "Let's fight again!"
    print $ alphabetWar "wq"       -- "Left side wins!"
    print $ alphabetWar "zzzzs"    -- "Right side wins!"
    print $ alphabetWar "wwwwww"   -- "Left side wins!"