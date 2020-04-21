data Operation = Add | Divide | Multiply | Subtract deriving (Eq, Show, Enum, Bounded)

arithmetic :: Fractional a => a -> a -> Operation -> a
arithmetic a b Add = a + b
arithmetic a b Divide = a / b
arithmetic a b Multiply = a * b
arithmetic a b Subtract = a - b

main = do
    print $ arithmetic 5 2 Add -- 7
    print $ arithmetic 8 2 Subtract -- 6
    print $ arithmetic 5 2 Multiply -- 10
    print $ arithmetic 8 2 Divide -- 4