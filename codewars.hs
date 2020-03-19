rentalCarCost :: Int -> Int
rentalCarCost d
  | d >= 7 = (d * 40) - 50
  | d >= 3 = (d * 40 ) - 20
  | otherwise = d * 40