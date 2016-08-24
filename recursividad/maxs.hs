maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Que vas a comparar?"
maximum' [x] = x
maximum' (x:xs)
		| x > maxTail 	= x
		| otherwise 	= maxTail
		where maxTail 	= maximum' xs

replicate' :: ( Num i, Ord i ) => i -> a -> [a]
replicate' n x
	| n <= 0 	= []
	| otherwise = x:replicate' ( n - 1 ) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n (x:xs)
	| n <= 0 = []
	| otherwise = x:take' ( n - 1 ) xs

zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' e (x:xs)
	| e == x = True
	| otherwise = elem' e xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
	let smallerSorted = quicksort [a | a <- xs, a <= x ]
		biggerSorted  = quicksort [a | a <- xs, a > x ]
	in smallerSorted ++ [x] ++ biggerSorted