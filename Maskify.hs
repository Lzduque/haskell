import Data.List

maskify :: String -> String
maskify str = mask ++ lastFour
    where
        (maskPart,lastFour) = splitAt (length str - 4) str
        mask = take (length maskPart) $ repeat '#'

main = do
    print $ maskify "4556364607935616" -- "############5616"
    print $ maskify "64607935616" -- "#######5616"
    print $ maskify "616" -- "616"
    print $ maskify "1" -- "1"
    print $ maskify "Skippy" -- "##ippy"
    print $ maskify "Nananananananananananananananana Batman!" -- "####################################man!"
