import Data.Char
import Data.List.Split

wordToCamelCase :: String -> String
wordToCamelCase "" = ""
wordToCamelCase (x : xs) = toUpper x : xs

toCamelCase :: String -> String
toCamelCase = f . splitOneOf "-_"
  where
    f [] = []
    f (x : xs) = concat (x : map wordToCamelCase xs)

main =
  do
    print $ toCamelCase "the_stealth_warrior"
    print (toCamelCase "the_stealth_warrior" == "theStealthWarrior")
    print $ toCamelCase "The-Stealth-Warrior"
    print (toCamelCase "The-Stealth-Warrior" == "TheStealthWarrior")
    print $ toCamelCase "-zhfn-aow-bcbef-hifkf"
    print (toCamelCase "-zhfn-aow-bcbef-hifkf" == "ZhfnAowBcbefHifkf")
    print $ toCamelCase "nn__brg_qvhr"
    print (toCamelCase "nn__brg_qvhr" == "nnBrgQvhr")
    print $ toCamelCase "_"
    print (toCamelCase "_" == "")
    print $ toCamelCase "__"
    print (toCamelCase "__" == "")
