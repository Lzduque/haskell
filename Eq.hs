data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun
-- day of week and numerical day of month
data Date =
  Date DayOfWeek Int

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Weds Weds = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False

instance Eq Date where
  (==) (Date weekday dayOfMonth) (Date weekday' dayOfMonth') = weekday == weekday' && dayOfMonth == dayOfMonth'

-- exercise 1
data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==)
    (TisAn integer)
    (TisAn integer')
    = integer == integer'


-- exercise 2
data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  (==)
    (Two a b)
    (Two c d)
    = a == c && b == d