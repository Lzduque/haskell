pageCount :: Int -> Int -> Int
pageCount n p
 | distFront > distback = distback
 | otherwise = distFront
 where
  distFront = pagesFromFront n p
  distback = pagesFromBack n p

pagesFromFront :: Int -> Int -> Int
pagesFromFront n p = ceiling ((p' - 1) / 2)
 where
   p' = fromIntegral p

pagesFromBack :: Int -> Int -> Int
pagesFromBack n p
 | isOdd n = floor ((n' - p') / 2)
 | otherwise = ceiling ((n' - p') / 2)
  where
   p' = fromIntegral p
   n' = fromIntegral n
   isOdd a = (a `rem` 2) /= 0


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
