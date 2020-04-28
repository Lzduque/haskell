partlist :: [String] -> [(String, String)]
partlist [] = []
partlist (_:[]) = []
partlist (x:xs) = intoTuple (x:xs) : partlist ((x ++ " " ++ head xs):tail xs)
    where
        intoTuple (y:ys) = (y, (unwords ys))
        intoTuple [] = ("", "")

main = do
    print $ partlist ["I", "wish", "I", "hadn't", "come"] -- [("I", "wish I hadn't come"), ("I wish", "I hadn't come"), ("I wish I", "hadn't come"), ("I wish I hadn't", "come")]
    print $ partlist ["cdIw", "tzIy", "xDu", "rThG"] -- [("cdIw", "tzIy xDu rThG"), ("cdIw tzIy", "xDu rThG"), ("cdIw tzIy xDu", "rThG")]
    print $ partlist ["vJQ", "anj", "mQDq", "sOZ"] -- [("vJQ", "anj mQDq sOZ"), ("vJQ anj", "mQDq sOZ"), ("vJQ anj mQDq", "sOZ")]