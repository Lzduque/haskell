-- this is how it should be done:
-- bonAppetit :: [Int] -> Int -> Int -> Either String Int
-- bonAppetit bill k ana = if ana == trueBill
--  then Left "Bon Appetit"
--  else Right (ana - trueBill)
--  where
--   trueBill = ((sum bill) - bill!!k) `div` 2

bonAppetit :: [Int] -> Int -> Int -> IO ()
bonAppetit bill k ana = if ana == trueBill
 then putStrLn $ id "Bon Appetit"
 else print (ana - trueBill)
 where
  trueBill = ((sum bill) - bill!!k) `div` 2

main = do
 bonAppetit [3,10,2,9] 1 12 -- should be '5'
 print "should be 5"
 bonAppetit [3,10,2,9] 1 7 -- should be 'Bon Appetit'
 print "should be Bon Appetit"
