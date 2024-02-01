import Data.List.Split as L

pageCount :: Int -> Int -> Int
pageCount n p
 | distFront > distBack = distBack
 | otherwise = distFront
 where
  arr = L.chunksOf 2 [0..n]
  i = foldl (\acc cur -> p `elem`cur) (0,0) arr
  distFront = 1 - i
  distBack = n - i

findElem :: (Int, Int) -> [Int] -> Int -> (Int, Int)
findElem acc cur p
 | p `elem`cur == True = ()

[[0,1],[2,3],[4,5],[6]]

main = do
  print (pageCount 6 2) -- should be '1'
  print "should be 1"
  print (pageCount 5 3) -- should be '1'
  print "should be 1"
  print (pageCount 5 4) -- should be '0'
  print "should be 0"
  print (pageCount 6 4) -- should be '1'
  print "should be 1"
