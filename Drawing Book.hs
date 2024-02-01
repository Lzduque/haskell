pageCount :: Int -> Int -> Int
pageCount n p
 | pagesFromFront n p > pagesFromBack n p = pagesFromBack n p
 | otherwise = pagesFromFront n p

pagesFromFront :: Int -> Int -> Int
pagesFromFront n p = ceiling ((p' - 1) / 2)
 where
   p' = fromIntegral p

pagesFromBack :: Int -> Int -> Int
pagesFromBack n p
 | (n `rem` 2) /= 0 = floor ((n' - p') / 2)
 | otherwise = ceiling ((n' - p') / 2)
  where
   p' = fromIntegral p
   n' = fromIntegral n

main = do
  print (pageCount 6 2) -- should be '1'
  print "should be 1"
  print (pageCount 5 3) -- should be '1'
  print "should be 1"
  print (pageCount 6 4) -- should be '1'
  print "should be 1"
  print (pageCount 5 4) -- should be '0'
  print "should be 0"
