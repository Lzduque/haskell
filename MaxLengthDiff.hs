mxdiflg :: [String] -> [String] -> Maybe Int
mxdiflg s1 s2
    | length s1 == 0 || length s2 == 0 = Nothing
    | s1S2 > s2S1 = Just s1S2
    | otherwise = Just s2S1
    where
        lengthS1 = map length s1
        lengthS2 = map length s2
        maxS1 = maximum lengthS1
        maxS2 = maximum lengthS2
        minS1 = minimum lengthS1
        minS2 = minimum lengthS2
        s1S2 = abs(maxS1 - minS2)
        s2S1 = abs(maxS2 - minS1)

main = do
        print $ mxdiflg ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"] ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"] -- (Just 13)
