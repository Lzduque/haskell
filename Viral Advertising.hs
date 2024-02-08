viralAdvertising :: Int -> Int
viralAdvertising n = (foldl likes 5 days)
  where
    days = [1 .. n]
    likes acc cur = (floor ((fromIntegral acc) / 2)) * (3)


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
