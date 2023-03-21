module MovingZeros (moveZeros) where

moveZeros :: [Int] -> [Int]
moveZeros xs = noZeros ++ zeros
  where
    zeros = filter (\x -> x==0) xs
    noZeros = filter (\x -> x/=0) xs

main = do
  print $ moveZeros [1,2,0,1,0,1,0,3,0,1] --`shouldBe` [1,2,1,1,3,1,0,0,0,0]
