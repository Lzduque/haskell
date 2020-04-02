printerError :: [Char] -> [Char]
printerError str = (show $ length outsideAM) ++ "/" ++ (show $ length str)
    where
        outsideAM = filter isElem str
        isElem char = char `elem` "nopqrstuvwxyz"

main = do
    print $ printerError "aaabbbbhaijjjm" -- "0/14"
    print $ printerError "aaaxbbbbyyhwawiwjjjwwm" -- "8/22"