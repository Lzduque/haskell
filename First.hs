x :: Integer
x = 5

add :: Integer -> Integer -> Integer
add a b = a + b

list1 :: [Char]
list1 = ['a', 'b', 'c', 'd']

list2 :: String
list2 = "abcd"

type Stringgyyy = String

list3 :: Stringgyyy
list3 = "abcd"

list4 :: [Char]
list4 = ['a'..]

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

list5 :: [Integer]
list5 = [0..9]

-- xs = [1,2,3,4,5]
-- map  xs

data Soup = ChickenNoodle | ChickenVeggie | Veggie
  deriving (Show, Eq)

-- data Int = 1 | 2 | 3 | ...

yummy :: Soup -> String
yummy ChickenNoodle = "Sounds good!"
yummy ChickenVeggie = "Hummmmm"
yummy Veggie = "Blahhh"