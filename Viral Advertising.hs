viralAdvertising :: Int -> Int
viralAdvertising n = snd (foldl likes (2,2) days)
  where
    days = [2 .. n]
    likes (liked, total) _ = ((floor ((fromIntegral (liked * 3)) / 2)), (floor ((fromIntegral (liked * 3)) / 2)) + total)

-- first day -> floored half of the people that recieved  -->2
-- second day -> floored half of that (acc) * 3 + that (acc)  --> 3 + 2 = 5
-- thrid day -> floored half of that (acc) * 3 + that (acc)  --> 6 + 5 = 11

main = do
  print (viralAdvertising 5)
  print "should be 24"
  print ((viralAdvertising 5) == 24)
  print (viralAdvertising 3)
  print "should be 9"
  print ((viralAdvertising 3) == 9)
  print (viralAdvertising 50)
  print "should be 2068789129"
  print ((viralAdvertising 50) == 2068789129)
