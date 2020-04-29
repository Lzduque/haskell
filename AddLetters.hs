addLetters :: [Char] -> Char
addLetters [] = 'z'
addLetters xs = fst $ head foundTuple
    where
        alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
        numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,0]
        dictionary = zip alphabet numbers
        lookup x = filter (\y -> x == fst y)
        translation = concat $ map (\x -> lookup x dictionary) xs
        translatedValues = map snd translation
        translatedSum = sum translatedValues `mod` 26
        foundTuple = filter (\x -> snd x == translatedSum) dictionary

main = do
    print $ addLetters ['a', 'b', 'c'] -- 'f'
    print $ addLetters ['z'] -- 'z'
    print $ addLetters ['a', 'b'] -- 'c'
    print $ addLetters ['c'] -- 'c'
    print $ addLetters ['z', 'a'] -- 'a'
    print $ addLetters ['y', 'c', 'b'] -- 'd'
    print $ addLetters [] -- 'z'