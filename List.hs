data List = Cons Int List | Empty

sumLst :: List -> Int
sumLst (Cons i rest) = i + sumLst rest
sumLst Empty = 0

mltLst :: List -> Int
mltLst (Cons i rest) = i * mltLst rest
mltLst Empty = 1

lst = Cons 2 (Cons 4 (Cons 6 Empty))
lst1 = Cons 1 (Cons 2 (Cons 3 Empty))

main = do
   print (sumLst lst)
   print (sumLst lst1)
   print (mltLst lst1)
   print (sumLst Empty)
