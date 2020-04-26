reverseLetter :: String -> String
reverseLetter = reverse . filter alpha 
    where
        alpha x = x `elem` "abcdefghijklmnopqrstuvwxyz"

main = do
    print $ reverseLetter "krishan" -- "nahsirk"
    print $ reverseLetter "ultr53o?n" -- "nortlu"
    print $ reverseLetter "ab23c" -- "cba"
    print $ reverseLetter "krish21an" -- "nahsirk"
    print $ reverseLetter "" --  ""
