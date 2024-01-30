import Data.List as L

-- migratoryBirds :: [Int] -> Int
migratoryBirds arr = head $ L.foldl longest [] $ L.group $ L.sort arr
 where
  longest acc cur
   | length cur > length acc = cur
   | otherwise = acc

main = do
 print (migratoryBirds [1,4,4,4,5,3]) -- should be '4'
 print "should be 4"  