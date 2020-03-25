import Data.List (sort)

descendingOrder :: Integer -> Integer
descendingOrder =
  read
  . concat
  . map show
  . reverse
  . sort
  . map (\x -> read [x] :: Int)
  . show


main = do
  print $ descendingOrder 0         -- 0
  print $ descendingOrder 1         -- 1
  print $ descendingOrder 15        -- 51
  print $ descendingOrder 1021      -- 2110
  print $ descendingOrder 123456789 -- 987654321


