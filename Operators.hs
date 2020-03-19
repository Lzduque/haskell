data Operator = Plus | Minus | Times | Div

opToChar :: Operator -> Char
opToChar Plus = '+'
opToChar Minus = '-'
opToChar Times = '*'
opToChar Div = '/'


main = print $ opToChar Plus
