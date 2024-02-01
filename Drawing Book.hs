pageCount :: Int -> Int -> Int
pageCount n p
 | pagesFromFront n p > pagesFromBack n p = pagesFromFront n p
 | otherwise = pagesFromBack n p

pagesFromFront :: Int -> Int -> Int
pagesFromFront n p = ceiling ((p - 1) `div` 2)

pagesFromBack :: Int -> Int -> Int
pagesFromBack n p = ceiling ((n - p) `div` 2)

main = do
  print (pageCount 6 2) -- should be '1'
  print "should be 1"
  print (pageCount 5 3) -- should be '1'
  print "should be 1"
  print (pageCount 5 4) -- should be '0'
  print "should be 0"
