-- Write a function, which takes a non-negative integer (seconds) as input and returns the time in a human-readable format (HH:MM:SS)

-- HH = hours, padded to 2 digits, range: 00 - 99
-- MM = minutes, padded to 2 digits, range: 00 - 59
-- SS = seconds, padded to 2 digits, range: 00 - 59
-- The maximum time never exceeds 359999 (99:59:59)

humanReadable :: Int -> String
humanReadable s = to2Digits hours ++ ":" ++ to2Digits minutes ++ ":" ++ to2Digits seconds
  where
    hours = s `div` 3600
    minutes = (s `rem` 3600) `div` 60
    seconds = (s `rem` 3600) `rem` 60
    to2Digits n
      | n < 10 = "0" ++ show n
      | otherwise = show n

main = do
  print $ humanReadable 0 -- " should be 00:00:00"
  print $ humanReadable 59 -- " should be 00:00:59"
  print $ humanReadable 60 -- " should be 00:01:00"
  print $ humanReadable 90 -- " should be 00:01:30"
  print $ humanReadable 86399 -- " should be 23:59:59"
  print $ humanReadable 359999 -- " should be 99:59:59"
  print $ humanReadable 324953 -- " should be 90:15:53"