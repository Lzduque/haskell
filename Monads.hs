putStrLn' str = do
  putStr str
  putChar '\n'

-- main = do
--     putStrLn' "First line"
--     putStrLn' "Second line"

putQStrLn str = do
  putChar '"'
  putStr str
  putChar '"'
  putChar '\n'

-- main = putQStrLn "You can quote me."

main = do
  putStrLn "Entre your line here: "
  str <- getLine
  putQStrLn str

