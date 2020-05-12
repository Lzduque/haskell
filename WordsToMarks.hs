wordsToMarks :: String -> Int
wordsToMarks xs = translatedSum
    where
        dictionary = zip [1..] ['a'..'z']
        lookup x = filter (\(a,b) -> x == b) dictionary
        translation = concat $ map (\x -> lookup x) xs
        translatedSum = sum $ map fst translation

main = do
    print $ wordsToMarks "attitude" -- 100
    print $ wordsToMarks "friends" -- 75
    print $ wordsToMarks "family" -- 66
    print $ wordsToMarks "selfness" -- 99
    print $ wordsToMarks "knowledge" -- 96