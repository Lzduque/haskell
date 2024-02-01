pageCount :: Int -> Int -> Int
pageCount n p
main = do
  print (pageCount 6 2) -- should be '1'
  print "should be 1"
  print (pageCount 5 3) -- should be '1'
  print "should be 1"
  print (pageCount 5 4) -- should be '0'
  print "should be 0"
