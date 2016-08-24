import Data.List (group, sort)

lengthRepeat = map (\l@(x:xs) -> (x, length l)) . group . sort $ [1, 1, 1, 5]

--group' :: (Eq a) => [a] -> [a]
group' [] = []
group' [x] = x
group' (x:y:xs)
	| x == y = x:y:group'
	--where isSame x y = x == y