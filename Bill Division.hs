bonAppetit :: [Int] -> Int -> Int -> String
bonAppetit bill k ana = do
    -- Write your code here

main = do
 print (bonAppetit [3,10,2,9] 1 12) -- should be '5'
 print "should be 5"
 print (bonAppetit [3,10,2,9] 1 7) -- should be 'Bon Appetit'
 print "should be Bon Appetit"
