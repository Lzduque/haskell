pageCount :: Int -> Int -> Int
pageCount n p = min distFront distBack
  where
    distFront = ceiling ((p' - firstPage) / 2)
    distBack
     | odd n = floor ((n' - p') / 2)
     | otherwise = ceiling ((n' - p') / 2)
    firstPage = 0
    lastPage
      | odd n = n
      | otherwise = n +1
    p' = fromIntegral p
    n' = fromIntegral n


main = do
  print (pageCount 6 2)
  print "should be 1"
  print (pageCount 6 2 == 1)
  print (pageCount 5 3)
  print "should be 1"
  print (pageCount 5 3 == 1)
  print (pageCount 6 4)
  print "should be 1"
  print (pageCount 6 4 == 1)
  print (pageCount 5 4)
  print "should be 0"
  print (pageCount 5 4 == 0)
