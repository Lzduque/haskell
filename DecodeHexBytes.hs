import Data.List.Split
import Data.List (unfoldr)
import Numeric

decodeHexBytes :: [Int] -> [Int]
decodeHexBytes = concat . map (\(x:xs) -> 0 : xs) . decodeCOBS'

decodeCOBS :: [[Int]] -> [Int] -> [[Int]]
decodeCOBS acc [] = acc
decodeCOBS acc (x:xs) = decodeCOBS acc' ys
    where
        (chunk,ys) = splitAt x (x:xs)
        acc' = acc ++ [chunk]

decodeCOBS' :: [Int] -> [[Int]]
decodeCOBS' = unfoldr go
    where
        go [] = Nothing
        -- go (x:xs) =
        --     let (chunk, ys) = splitAt x (x:xs)
        --     in Just splitAt x (x:xs)
        go (x:xs) = Just $ splitAt x (x:xs)

main = do
    print $ map (\x -> showHex x "") $ decodeHexBytes [0x03, 0x07, 0x09, 0x02, 0x01, 0x01, 0x06, 0x02, 0x03, 0x04, 0x05, 0x06, 0x03, 0x18, 0x22]
    print "[0x00, 0x07, 0x09, 0x00, 0x01, 0x00, 0x00, 0x02, 0x03, 0x04, 0x05, 0x06, 0x00, 0x18, 0x22]"
