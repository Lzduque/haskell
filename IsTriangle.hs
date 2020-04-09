import Data.List (sort)

isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c
    | a < b + c && b < a + c && c < b + a = True
    | a < 0 || b < 0 || c < 0 = False
    | otherwise = False
    
main = do
    print $ isTriangle 1 2 2 -- True
    print $ isTriangle 7 2 2 -- False
    print $ isTriangle 1 3 2 -- False
    print $ isTriangle 3 1 2 -- False
    print $ isTriangle 1 2 3 -- False
    print $ isTriangle 5 1 2 -- False
    print $ isTriangle 1 2 5 -- False
    print $ isTriangle 2 5 1 -- False
    print $ isTriangle 4 2 3 -- True
    print $ isTriangle 2 2 2 -- True
    print $ isTriangle 5 1 5 -- True
    print $ isTriangle (-1) 2 3 -- False
    print $ isTriangle 1 (-2) 3 -- False
    print $ isTriangle 1 2 (-3) -- False
    print $ isTriangle 0 2 3 -- False
