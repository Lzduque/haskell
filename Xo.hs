-- | Returns true if the number of
-- Xs is equal to the number of Os
-- (case-insensitive)
import Data.Char (toLower)

xo :: String -> Bool
xo str = length xs == length os
    where
        lowStr = map toLower str
        xs = filter (\x -> 'x' == x) lowStr
        os = filter (\o -> 'o' == o) lowStr

main = do
    print $ xo "ooxx" -- true
    print $ xo "xooxx" -- false
    print $ xo "ooxXm" -- true
    print $ xo "zpzpzpp" -- true // when no 'x' and 'o' is present should return true
    print $ xo "zzoo" -- false
