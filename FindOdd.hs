-- | Given a list, find the [Int] that appears an 
--   odd number of times. The tests will always
--   provide such a number, and the list will
--   always contain at least one element.
-- import Data.List (nub,sort)
import qualified Data.Map.Strict as Map

findOdd :: [Int] -> Int
-- findOdd xs = head [x | x <- xs, odd . length $ filter (== x) xs]
findOdd xs = undefined
    where
        numsCount = foldl (\acc, x -> case ) xs
        



main = do
    print $ findOdd [1,2,1,4,2,3,4,2,3] -- 2
    print $ findOdd [1,2,1,4,3,4,2] -- 3
    print $ findOdd [7] -- 7
