cat :: [a] -> [a] -> [a]
cat (x : xs) ys = x : cat xs ys
cat [] ys = ys

-- main = putStrLn $ cat "Hello " "World!"

pig :: String -> String
pig str = cat "pig" str

main = putStrLn $ pig "sty"
