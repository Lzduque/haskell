getTotalX :: [Integer] -> [Integer] -> Integer
getTotalX a b = do
    -- Write your code here


main = do
  print (getTotalX [2, 4] [16, 32, 96]) -- should be '3'
  print "should be 3"
  print (getTotalX [2, 6] [24, 36]) -- should be '3'
  print "should be 3"

	-- maping through numbers, to find the ones that are factors and the others are factors of...
	-- n%a == 0 && n%b == 0 ...
	-- a1%n == 0 && a2%n == 0 ...

	-- how to know the numbers to evaluate? the ns?
