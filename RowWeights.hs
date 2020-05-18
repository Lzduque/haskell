rowWeights :: [Int] -> [Int]
rowWeights weights = [sum odds, sum evens]
    where
        indexWeights = zip [1..] weights
        odds = map snd $ filter (\(a,_) -> odd a) indexWeights
        evens = map snd $ filter (\(a,_) -> even a) indexWeights

main = do
    print $ rowWeights [80] -- [80,0]
    print $ rowWeights [100,50] -- [100,50]
    print $ rowWeights [50,60,70,80] -- [120,140]
    print $ rowWeights [13,27,49] -- [62,27]
    print $ rowWeights [70,58,75,34,91] -- [236,92]
    print $ rowWeights [29,83,67,53,19,28,96] -- [211,164]
    print $ rowWeights [0] -- [0,0]
    print $ rowWeights [100,51,50,100] -- [150,151]
    print $ rowWeights [39,84,74,18,59,72,35,61] -- [207,235]
    print $ rowWeights [0,1,0] -- [0,1]
