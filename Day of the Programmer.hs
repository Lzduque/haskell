dayOfProgrammer :: Int -> String
dayOfProgrammer year

main = do
 print (dayOfProgrammer 2017) -- should be '13.09.2017'
 print "should be 13.09.2017"
 print (dayOfProgrammer 2016) -- should be '12.09.2016'
 print "should be 12.09.2016"
 print (dayOfProgrammer 1800) -- should be '12.09.1800'
 print "should be 12.09.1800"  