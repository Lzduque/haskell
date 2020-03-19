-- Your task is to make function, which returns the sum of a sequence of integers.

-- The sequence is defined by 3 non-negative values: begin, end, step.

-- If begin value is greater than the end, function should returns 0

sequenceSum :: (Int, Int, Int) -> Int
sequenceSum (begin,end,step) = sum $ createSequence begin end step

-- take end (createSequence begin step)

createSequence :: Int -> Int -> Int -> [Int]
createSequence begin end step
  | begin > end = []
  | otherwise = (begin : createSequence (begin + step) end step)

main = do
  print $ sequenceSum (2,2,2)
  print $ sequenceSum (2,6,2) -- 2 + 4 + 6
  print $ sequenceSum (1,5,1) -- 1 + 2 + 3 + 4 + 5
  print $ sequenceSum (1,5,3) -- 1 + 4
