foldTo :: Double -> Maybe Int
foldTo distance
    | distance < 0 = Nothing
    | distance <= 0.0001 = Just 0
    | otherwise = Just foldIt
    where
        numOfLayers = distance / 0.0001
        foldIt = ceiling $ logBase 2 numOfLayers



main = do
    print $ foldTo 10000000 -- isJust
    print $ foldTo (-2846468486) -- isNothing

