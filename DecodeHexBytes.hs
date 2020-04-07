import Data.List.Split
import Numeric

decodeHexBytes :: [Int] -> [Int]
decodeHexBytes xs = 
    where
        seconde xs = tail (firstSplit xs)
        first xs = head (firstSplit xs)
        firstSplit xs = splitAt (point xs) xs
        point = head


    -- where
        -- splitted xs = takeBytes xs : takeBytes (snd xs)
        -- takeBytes xs = take (point xs) xs
        -- point = head

-- decodeHexBytes xs = concat . map addLength $ splitted xs
--     where
--         splitted xs = splitWhen (== 0x00) $ tail xs
--         addLength xs = (length xs + 1) : xs

-- split the list where? before a number that is not 0

main = do
    print $ map (\x -> showHex x "") $ decodeHexBytes [0x03, 0x07, 0x09, 0x02, 0x01, 0x01, 0x06, 0x02, 0x03, 0x04, 0x05, 0x06, 0x03, 0x18, 0x22]
    print "[0x00, 0x07, 0x09, 0x00, 0x01, 0x00, 0x00, 0x02, 0x03, 0x04, 0x05, 0x06, 0x00, 0x18, 0x22]"
