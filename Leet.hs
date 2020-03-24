-- Your task is to write a function toLeetSpeak that converts a regular english sentence to Leetspeak.

toLeetSpeak :: String -> String
toLeetSpeak xs = map translate xs

translate :: Char -> Char
translate x
  | x == 'A' = '@'
  | x == 'B' = '8'
  | x == 'C' = '('
  | x == 'D' = 'D'
  | x == 'E' = '3'
  | x == 'G' = '6'
  | x == 'H' = '#'
  | x == 'I' = '!'
  | x == 'L' = '1'
  | x == 'O' = '0'
  | x == 'S' = '$'
  | x == 'T' = '7'
  | x == 'Z' = '2'
  | otherwise = x


main = do
      print $ toLeetSpeak "LEET" -- "1337"
      print $ toLeetSpeak "CODEWARS" -- "(0D3W@R$"
      print $ toLeetSpeak "HELLO WORLD" -- "#3110 W0R1D"
      print $ toLeetSpeak "LOREM IPSUM DOLOR SIT AMET" -- "10R3M !P$UM D010R $!7 @M37"
      print $ toLeetSpeak "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG" -- "7#3 QU!(K 8R0WN F0X JUMP$ 0V3R 7#3 1@2Y D06"