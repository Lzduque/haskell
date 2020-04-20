import Data.List.Split (divvy)

digit5 :: String -> Int
digit5 xs = maximum b
    where
        a = divvy 5 1 xs
        b = map read a

main = do
    print $ digit5 "7316717"       -- 73167
    print $ digit5 "1234567898765" -- 98765
    print $ digit5 "158964683186486161894797962265954689116891651" -- 97962 -- [96468, 94797, 97962, 96226, 95468, 91651]