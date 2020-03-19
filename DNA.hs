-- import Codewars.Kata.DNA.Types

data Base = A | T | G | C
  deriving (Show, Eq)

type DNA = [Base]

dnaStrand :: DNA -> DNA
dnaStrand [] = []
dnaStrand (x:xs)
  | x == A = T : dnaStrand xs
  | x == T = A : dnaStrand xs
  | x == G = C : dnaStrand xs
  | otherwise = G : dnaStrand xs

main = do
  print $ dnaStrand []
  print $ dnaStrand [A,T,G,C]
  print $ dnaStrand [G,T,A,T]
  print $ dnaStrand [A,A,A,A]
