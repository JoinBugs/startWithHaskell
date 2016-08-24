collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
	| even n = n:collatz( n `div` 2 )
	| otherwise = n:collatz( n * 3 + 1 )

numsLong :: Int
numsLong = length ( filter isLong ( map collatz [1..100] ) )
	where isLong xs = length xs > 15

numsLong' :: Int
numsLong' = length ( filter (\xs -> length xs > 15 ) ( map collatz [1..100] ) )

flip' :: (a -> b -> c) -> b -> a -> c
flip' f = \x y -> f y x