-- data Point = Pt Int Int
--     deriving Show

-- inc :: Point -> Point
-- inc (Pt x y) = Pt (x + 1) (y + 1)

-- p :: Point
-- p = Pt (-1) 3

-- main = print $ inc p

inc :: (Int, Int) -> (Int, Int)
inc (x, y) = (x + 1, y + 1)

p :: (Int, Int)
p = (-1, 3)

main = print $ inc p
