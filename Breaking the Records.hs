-- so we need to count the times we update the least and the max
-- so we do have to go through the array in order, first analyzing each and counting the times we find a smaller number
--  we start with the least number being -1 and the number of times we had to change being -1
-- or we could start with the first number of the array and 0 as our count

breakingRecords:: [Integer] -> [Integer]
breakingRecords scores = [snd biggest, snd smallest]
 where
  smallest = foldl compareCountMin ((head scores),0) scores
  biggest = foldl compareCountMax ((head scores),0) scores

compareCountMin :: (Integer, Integer) -> Integer -> (Integer, Integer)
compareCountMin acc cur 
 | (fst acc) > cur = (cur, (snd acc) + 1)
 | otherwise = acc


compareCountMax :: (Integer, Integer) -> Integer -> (Integer, Integer)
compareCountMax acc cur
 | (fst acc) < cur = (cur, (snd acc) + 1)
 | otherwise = acc


main = do
  print (compareCountMin (12,0) 0) -- should be '(0,1)'
  print "should be (0,1)"
  print (breakingRecords [12, 24, 10, 24]) -- should be '[1,1]'
  print "should be [1,1]"
  print (breakingRecords [10,5,20,20,4,5,2,25,1]) -- should be '[2,4]'
  print "should be [2,4]"
  print (breakingRecords [3,4,21,36,10,28,35,5,24,42]) -- should be '[4,0]'
  print "should be [4,0]"
