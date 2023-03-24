data Direction = North | East | West | South deriving (Eq, Show)

-- have to go through them keeping track of the last direction, but that is not enough, since if we find a pair that we have to remove (nul each other) we have to analyze the "new last" direction, so we have to keep track of all the list so far -> basically the answer because we have to return the final list, so we keep track of the list

dirReduce :: [Direction] -> [Direction]
dirReduce = foldl cleanup []

cleanup :: [Direction] -> Direction -> [Direction]
cleanup acc cur
  | null acc = [cur]
  | last acc == North && cur == South = init acc
  | last acc == South && cur == North = init acc
  | last acc == East && cur == West = init acc
  | last acc == West && cur == East = init acc
  | otherwise = acc ++ [cur]

main = do
  print $ show $ dirReduce [] -- should be [     ]
  print $ show $ dirReduce [North] -- should be [North]
  print $ show $ dirReduce [North, West] -- should be [North,West]
  print $ show $ dirReduce [North, West, East] -- should be [North]
  print $ show $ dirReduce [North, West, South, East] -- should be [North, West, South, East]
  print $ show $ dirReduce [North, South, South, East, West, North, West] -- should be [West]
  print $ show $ dirReduce [North, South, South, East, West, North] -- should be []
