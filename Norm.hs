-- norm :: [Double] -> Double
-- norm lst = sqrt (squares lst)

-- squares :: [Double] -> Double
-- squares [] = 0.0
-- squares (x : xs) = x * x  + squares xs

-- main = print (norm [1.1, 2.2, 3.3])

-- decimate :: [a] -> [a]
-- decimate (a : _ : rest) = a : decimate rest
-- decimate (a : _) = [a]
-- decimate (_) = []

-- -- should print [1, 3, 5]
-- main = print (decimate [1, 2, 3, 4, 5])

-- decimate :: [Int] -> [Int]
-- decimate (a : _ : rest) = add a : decimate rest
-- decimate (a : _) = [add a]
-- decimate (_) = []

-- add :: Int -> Int
-- add a = a + 1

-- -- should print [1, 3, 5]
-- main = print (decimate [1, 2, 3, 4, 5])

zipLst :: ([a], [b]) -> [(a, b)]
zipLst ((a : resta), (b : restb)) = (a, b) : zipLst (resta, restb)
zipLst (_, _) = []

main = print $ zipLst ([1, 2, 3, 4], "Hello")
