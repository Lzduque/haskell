-- list, 0xof Int
-- to a list of Int
-- encode

-- packet is a list of Hexideciamal Ints ([0x01,0x02,0x03])
-- a raw packet may contain "0s" 0x00, but the encoded packet can't!

-- If you have a 0x00 byte in your raw packet, you have to encode it.
-- But instead of encoding it directly, you encode it as the length of the block of data that includes both the 0x00 itself and any nonzero raw bytes that follow it.

-- Ex:
-- raw packet:     00 07 09 00 01 00 00 02 03 04 05 06 00 18 22
-- encoded packet: 03 07 09 02 01 01 06 02 03 04 05 06 03 18 22
import Data.List.Split (splitWhen)
import Numeric

encodeHexBytes :: [Int] -> [Int]
encodeHexBytes xs = concat . map addLength $ splitted xs
    where
        splitted xs = splitWhen (== 0x00) $ tail xs
        addLength xs = (length xs + 1) : xs

-- split the list where? before a number that is not 0

main = do
    print $ map (\x -> showHex x "") $ encodeHexBytes [0x00, 0x07, 0x09, 0x00, 0x01, 0x00, 0x00, 0x02, 0x03, 0x04, 0x05, 0x06, 0x00, 0x18, 0x22]
    print "[0x03, 0x07, 0x09, 0x02, 0x01, 0x01, 0x06, 0x02, 0x03, 0x04, 0x05, 0x06, 0x03, 0x18, 0x22]"