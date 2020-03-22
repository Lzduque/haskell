-- getCount :: String -> Int
-- getCount xs = foldl vowelsFinder 0 xs

-- vowelsFinder :: Int -> Char -> Int
-- vowelsFinder acc x
--   | x == 'a' = 1 + acc
--   | x == 'e' = 1 + acc
--   | x == 'i' = 1 + acc
--   | x == 'o' = 1 + acc
--   | x == 'u' = 1 + acc
--   | otherwise = acc

-- second try
getCount :: String -> Int
getCount = length . filter onlyVowels

onlyVowels :: Char -> Bool
onlyVowels letter = elem letter "aeiou"

-- refactor
-- getCount :: String -> Int
-- getCount xs = length $ filter (`elem` "aeiou") xs

main = do
  print $ getCount "ape"         -- 2
  print $ getCount "banana"      -- 3
  print $ getCount "batman"      -- 2
  print $ getCount "abracadabra" -- 5
