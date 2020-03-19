-- isElem c (d : rest) = if c == d
--                       then True
--                       else isElem c rest
-- isElem _ [] = False

-- main = do
--     print $ isElem '3' "abc"
--     print $ isElem '3' "123"

isElem c (d : rest) = if c == d
                      then True
                      else isElem c rest
isElem _ [] = False
-- show
is3elem :: [Char] -> Bool
is3elem = isElem '3'

main = print $ is3elem "123"
