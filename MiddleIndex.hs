-- | Return the index of the middle element.
--   The first element has index 0.

gimme :: Ord a => (a, a, a) -> Int
gimme (x, y, z)
  | (z < x && x < y) = 0
  | (y < x && x < z) = 0
  | (x < y && y < z) = 1
  | (z < y && y < x) = 1
  | (y < z && z < x) = 2
  | (x < z && z < y) = 2
  | otherwise = 3

main = do
  print $ gimme (1,2,3)
  print $ gimme (2,1,3)
  print $ gimme (3,1,2)
  print $ gimme (5,10,14)
