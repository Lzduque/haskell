-- 89 1     => 8¹ + 9² = 89                       =   89 * 1     -> 1
-- 92 1     => 9¹ + 2² = 13                       !=  92 * 1     -> -1
-- 695 2    => 6² + 9³ + 5⁴= 1390                 =   695 * 2    -> 2
-- 46288 3  => 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688    =   46288 * 51 -> 51
-- 2 analyses:
-- 1- divide original number into digits and elevate to the sencond number and sucessors
--  then add them up
-- 2- this number divided by the second should be equal to the first

calc :: Integer -> Integer -> Integer
calc a b = foldr (\cur acc -> (fst cur ^ snd cur) + acc) 0 numsPowers
  where
    nums = map (\x -> read [x] :: Integer) $ show a
    powers = take (length nums) [b ..]
    numsPowers = zip nums powers

digpow :: Integer -> Integer -> Integer
digpow n p
  | check == 0 = -1
  | calc n p `rem` n == 0 = check
  | otherwise = -1
  where
    check = calc n p `div` n

main = do
  print $ show (digpow 89 1) ++ " == 1 " ++ show (digpow 89 1 == 1)
  print $ show (digpow 92 1) ++ " == -1 " ++ show (digpow 92 1 == -1)
  print $ show (digpow 695 2) ++ " == 2 " ++ show (digpow 695 2 == 2)
  print $ show (digpow 46288 3) ++ " == 51 " ++ show (digpow 46288 3 == 51)
  print $ show (digpow 1 3) ++ " == 1 " ++ show (digpow 1 3 == 1)
  print $ show (digpow 3 1) ++ " == 1 " ++ show (digpow 3 1 == 1)
  print $ show (digpow 1 1) ++ " == 1 " ++ show (digpow 1 1 == 1)
  print $ show (digpow 1 0) ++ " == 1 " ++ show (digpow 1 0 == 1)
  print $ show (digpow 2 0) ++ " == -1 " ++ show (digpow 2 0 == -1)
