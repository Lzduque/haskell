angle::Int -> Int
angle n = (n - 2) * 180

main = do
    print $ angle 3 -- 180
    print $ angle 4 -- 360