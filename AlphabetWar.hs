import Data.List.Split (divvy)

alphabetWar :: String -> String
alphabetWar fight 
    | pointsLeft > pointsRight = "Left side wins!"
    | pointsRight > pointsLeft = "Right side wins!"
    | otherwise = "Let's fight again!"
    where
        fighters = divvy 1 1 fight
        left =  [("w",4),("p",3),("b",2),("s",1)]
        right = [("m",4),("q",3),("d",2),("z",1)]
        lookup x = filter (\(a,b) -> x == a)
        onlyLeft = concat $ map (\x -> lookup x left) fighters
        onlyRight = concat $ map (\x -> lookup x right) fighters
        pointsLeft = sum $ map (\(a,b) -> b) onlyLeft
        pointsRight = sum $ map (\(a,b) -> b) onlyRight

main = do
    print $ alphabetWar "z"        -- "Right side wins!"
    print $ alphabetWar "zdqmwpbs" -- "Let's fight again!"
    print $ alphabetWar "wq"       -- "Left side wins!"
    print $ alphabetWar "zzzzs"    -- "Right side wins!"
    print $ alphabetWar "wwwwww"   -- "Left side wins!"
