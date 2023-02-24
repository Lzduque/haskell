-- first do math operations on original number
--  number -> read it as a string so I can map, elevating each on by the power of the string length
-- reduce it by suming the numbers
-- compare original and result to be able to respond with true or false

narcissistic :: Integral n => n -> Bool
narcissistic n
  | n == fromIntegral (check $ fromIntegral n) = True
  | otherwise = False

check :: Int -> Int
check x = sum $ map (\y -> y ^ length nums) nums
  where
    strg = show x
    nums = map (\a -> read [a] :: Int) strg

main =
  do
    print (narcissistic 7)
    print (not (narcissistic 12))
    print (narcissistic 370)
    print (narcissistic 371)
    print (narcissistic 1634)
