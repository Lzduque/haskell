import qualified Data.Set as Set

longest :: [Char] -> [Char] -> [Char]
longest s1 s2 = Set.toList . Set.fromList $ s1 ++ s2


main = do
    print $ longest "aretheyhere" "yestheyarehere" -- "aehrsty"
    print $ longest "loopingisfunbutdangerous" "lessdangerousthancoding" -- "abcdefghilnoprstu"
    print $ longest "inmanylanguages" "theresapairoffunctions" -- "acefghilmnoprstuy"        
