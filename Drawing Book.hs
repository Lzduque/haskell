pageCount :: Int -> Int -> Int
pageCount n p
 | pagesFromFront n' p' > pagesFromBack n' p' = pagesFromBack n' p'
 | otherwise = pagesFromFront n' p'
 where
  n' = fromIntegral n
  p' = fromIntegral n

pagesFromFront :: (RealFrac a, Num a) => a -> a -> Int
pagesFromFront n p = ceiling ((p - 1) / 2)

pagesFromBack :: (RealFrac a, Num a) => a -> a -> Int
pagesFromBack n p = ceiling ((n - p) / 2)

main = do
  print (pageCount 6 2) -- should be '1'
  print "should be 1"
  print (pageCount 5 3) -- should be '1'
  print "should be 1"
  print (pageCount 5 4) -- should be '0'
  print "should be 0"
