-- The function is expected to return a STRING.
-- The function accepts following parameters:
--  1. INTEGER x1
--  2. INTEGER v1
--  3. INTEGER x2
--  4. INTEGER v2
-- they have to get to the same place at the same time
-- x1 + (v1 * y) = x2 + (v2 * y)
-- x1 + v1*y = x2 + v2*y
-- x1 - x2 = v2*y - v1*y 
-- v2*y - v1*y = x1 - x2 
-- y (v2 - v1) = x1 - x2 
-- y = (x1 - x2) / (v2 - v1)
-- y has to be a round number

kangaroo :: Integer -> Integer -> Integer -> Integer -> String
kangaroo x1 v1 x2 v2
  | y == fromIntegral (round y) && y > 0 = "YES"
  | otherwise = "NO"
  where
    y :: Float
    y = fromIntegral (x1 - x2) / fromIntegral (v2 - v1)



main = do
  print (kangaroo 2 1 1 2) -- should be 'YES'
  print "should be YES"
  print (kangaroo 0 3 4 2) -- should be 'YES'
  print "should be YES"
  print (kangaroo 0 2 5 3) -- should be 'NO'
  print "should be NO"