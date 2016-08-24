sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0

sum''' :: (Num a) => [a] -> a
sum''' = foldl1 (+)

elem' :: (Eq a) => a -> [a] -> Bool
elem' e xs = foldl (\acc x -> if e == x then True else acc ) False xs