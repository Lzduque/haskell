maxRot :: Integer -> Integer
maxRot = fromIntegral . maximum . map unDigits . rotateLeft . digits
    where
        digits y = map (\x -> read [x] :: Int) (show y)
        unDigits ys = read (concat (map show ys)) :: Int

rotateLeft :: [Int] -> [[Int]]
rotateLeft [] = []
rotateLeft (x:xs) = (x:xs) : (map (\ys -> head r : ys) $ rotateLeft (tail r))
    where
        r = rotate (x:xs)
        rotate y = tail y ++ [head y]

main = do
    print $ maxRot 38458215 -- 85821534
    print $ maxRot 195881031 -- 988103115
    print $ maxRot 896219342 -- 962193428
    print $ maxRot 69418307 -- 94183076