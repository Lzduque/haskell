import Data.Char (toUpper)

capitalize :: [Char] -> [[Char]]
capitalize xs = [map (\(x, y) -> y) oddXs, map (\(x, y) -> y) evenXs]
    where
        indexed = zip [1..length xs] xs
        oddXs = map (\(x, y) -> if odd x then (x, toUpper y) else (x,y)) indexed
        evenXs = map (\(x, y) -> if even x then (x, toUpper y) else (x,y)) indexed

main = do
    print $ capitalize "abcdef" -- ["AbCdEf", "aBcDeF"]
    print $ capitalize "codewars" -- ["CoDeWaRs", "cOdEwArS"]
    print $ capitalize "abracadabra" -- ["AbRaCaDaBrA", "aBrAcAdAbRa"]
    print $ capitalize "codewarriors" -- ["CoDeWaRrIoRs", "cOdEwArRiOrS"]
    print $ capitalize "indexinglessons" -- ["InDeXiNgLeSsOnS", "iNdExInGlEsSoNs"]
    print $ capitalize "codingisafunactivity" -- ["CoDiNgIsAfUnAcTiViTy", "cOdInGiSaFuNaCtIvItY"]