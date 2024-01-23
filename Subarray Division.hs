-- we have segments and want to divide them, each segment has a number
-- they have to match the following criteria:
-- the length of the segments matches the birth month, which means, if the month = 2, that we can only add up 2 segments?
-- the sim of the integers from each piece has to == the birth day, so if the birthday = 4, a possible answer is 2, 2 or 1,3 
-- this func5tion returns a Integer, which is the number of possible answers.
-- as a human thinking about how to do it manually:
-- maybe sort the pieces to make it easier.
-- start from the first number [1,2,1,3,2], d = 3, m = 2
-- first number is 1, which means the next number or numbers has to be 3 - 1 = 2
-- if the number of integers is larger than 1 (we only have one so far), then we have to keep going
-- if the number of integers is == 1, the number of integers analyzed so far AND the sum is not the number we need, 3 then this does not work, we have to go to next number.



-- breakingRecords:: [Integer] -> [Integer]
-- breakingRecords scores = [snd biggest, snd smallest]


main = do
  print (compareCountMin (12,0) 0) -- should be '(0,1)'
  print "should be (0,1)"
