count :: Eq a => a -> [a] -> Int
count x =  length . filter (==x)

lengthIs10 :: [Char] -> Bool
lengthIs10 walk
  | number > 10 = False
  | number == 10 = True
  | otherwise = False
  where
    number = length $ take 11 walk

isValidWalk :: [Char] -> Bool
isValidWalk walk 
  | lengthIs10 walk && backToStart walk = True
  | otherwise = False
  where
    backToStart walk = count 'n' walk == count 's' walk && count 'w' walk == count 'e' walk

main = do
    print $ isValidWalk ['n','s','n','s','n','s','n','s','n','s'] -- 'True'
    print $ isValidWalk ['n','s','n','s','n','s','n','s','n','n'] -- 'False'
    print $ isValidWalk ['n','s'] -- 'False'
    print $ isValidWalk (repeat 'n') -- 'False'
    print $ isValidWalk ['n','s','e','w','n','s','e','w','n','s'] -- 'True'