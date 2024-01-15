-- The function is expected to return a STRING.
-- The function accepts following parameters:
--  1. INTEGER x1
--  2. INTEGER v1
--  3. INTEGER x2
--  4. INTEGER v2

-- Integer -> Integer -> Integer -> Integer ->String
kangaroo x1 v1 x2 v2 = do
    -- Write your code here


main = do
  print $ show $ kangaroo 2 1 1 2 -- should be 'YES'
  print $ show $ kangaroo 0 3 4 2 -- should be 'YES'
  print $ show $ kangaroo 0 2 5 3 -- should be 'NO'
