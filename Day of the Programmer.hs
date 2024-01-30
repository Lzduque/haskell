dayOfProgrammer :: Int -> String
dayOfProgrammer year
 | isJulianYear year = yearJulian year
 | year == 1918 = "26.09.1918"
 | otherwise = yearGregorian year

isJulianYear :: Int -> Bool
isJulianYear year
 | year <= 1917 = True
 | otherwise = False

yearJulian :: Int -> String
yearJulian year
 | year `rem` 4 == 0 = "12.09." ++ (intToString year)
 | otherwise =  "13.09." ++ (intToString year)
--  | otherwise =  "normal julian" 

yearGregorian :: Int -> String
yearGregorian year
 | year `rem` 400 == 0 = "12.09." ++ (intToString year)
 | year `rem` 4 == 0 && year `rem` 100 /= 0 =  "12.09." ++ (intToString year)
 | otherwise =  "13.09." ++ (intToString year)
--  | otherwise =  "normal gregorian" 

intToString :: Int -> String
intToString n = show n

main = do
 print (dayOfProgrammer 2017) -- should be '13.09.2017'
 print "should be 13.09.2017"
 print (dayOfProgrammer 2016) -- should be '12.09.2016'
 print "should be 12.09.2016"
 print (dayOfProgrammer 1800) -- should be '12.09.1800'
 print "should be 12.09.1800"  