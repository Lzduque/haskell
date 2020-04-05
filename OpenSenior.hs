data Membership = Open | Senior deriving (Eq, Show)

openOrSenior :: [(Int, Int)] -> [Membership]
openOrSenior = map classify
    where
        classify (age,handicap)
            | age >= 55 && handicap > 7 = Senior
            | otherwise = Open

main = do
    print $ openOrSenior []        -- []
    print $ openOrSenior [(18,20)] -- [Open]
    print $ openOrSenior [(55,20)] -- [Senior]
    print $ openOrSenior [(55,7)] -- [Open]
    print $ openOrSenior [(55,7),(55,8),(54,9)] -- [Open, Senior, Open]
