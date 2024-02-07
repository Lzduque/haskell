-- I would approach this, manually, like:
-- it is a loop inside a loop, so starting with the first keyboard, I go through all the USBs comapring:
-- is it larger than the last value AND smaller or euqal to the budget? The first default value is -1, so if nothing matches, that would be the answer.

getMoneySpent :: [Int] -> [Int] -> Int -> Int
getMoneySpent keyboards drives b = foldl compareKeyboards (-1) keyboards
  where
    compareKeyboards acc cur = foldl compareDrives acc drives
      where
        compareDrives x y
          | cur + y <= b && cur + y > acc = cur + y
          | otherwise = x

main = do
  print (getMoneySpent [3,1] [5,2,8] 9)
  print "should be 9"
  print ((getMoneySpent [3,1] [5,2,8] 9) == 9)
  print (getMoneySpent [4] [5] 5)
  print "should be -1"
  print ((getMoneySpent [4] [5] 5) == -1)
