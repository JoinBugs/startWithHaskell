applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
	where g x y = f y x

{-
	ghci> flip' zip [1,2,3,4,5] "hello"
	[('h',1),('e',2),('l',3),('l',4),('o',5)]
	ghci> zipWith (flip' div) [2,2..] [10,8,6,4,2]
	[5,4,3,2,1]

	---------------------------------------------
	la aplicacion de una funcion o evalucion de la misma es
	efectudad por el operador de espacio y este tiene la mayor
	procedencia, en cualquier sentencia esta comenzara a evaluarse
	de izquierda a derecha, en el caso de "flip' zip [1,2,3,4,5] "hello""
	pasa que se evalua primero la funcion flip quien hace:
	recive como parametro una funcion y esta funcion que recive tiene
	que tener como minimo dos parametros y lo que hace es cambiar la 
	evaluacion de los parametros de esta, como?.
-}

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

{--sum (takeWhile (<10000)  ( filter odd (map (^2) [1..] ) ) )--}