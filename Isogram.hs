import Data.Set (fromList)
import Data.Char

isIsogram :: String -> Bool
isIsogram string
  | length setFromString == length lowerString = True
  | otherwise = False
  where
    lowerString = map toLower string
    setFromString = fromList lowerString

main = do
  print $ isIsogram "Dermatoglyphics" -- true
  print $ isIsogram "aba" -- false
  print $ isIsogram "moOse" -- false -- ignore letter case