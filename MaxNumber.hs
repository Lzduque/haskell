import Data.List.Split (divvy)
import Data.List (sort)

maxNumber :: Int -> Int
maxNumber = read . concat . reverse . sort . divvy 1 1 . show

main = do
    print $ maxNumber 213 -- 321
    print $ maxNumber 7389 -- 9873
    print $ maxNumber 63792 -- 97632
    print $ maxNumber 566797 -- 977665
    print $ maxNumber 1000000 -- 1000000
