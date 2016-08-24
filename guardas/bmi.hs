bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
	| bmi <= skinny = "Tienes infrapeso, Eres Emo?"
	| bmi <= normal = "Supuestamente eres normal... Espero que seas feo."
	| bmi <= fat	= "!Estas Gordo, Pierde algo de peso gordito."
	| otherwise   	= "!Enhorabuena, eres una ballena"
	where bmi = weight / height ^ 2
	      (skinny, normal, fat) = (18.5, 25.0, 30.0)

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

initials' :: String -> String -> String
initials' (f:_) (l:_) = [f] ++ ". " ++ [l] ++ "."

callBmi :: (RealFloat a) => [(a, a)] -> [a]
callBmi xs = [bmi w h | ( w, h ) <- xs ]
	where bmi weight height = weight / height ^ 2

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [ bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0 ]

maxi :: (Ord a) => [a] -> a
maxi [x] = x
maxi (x:y:xs)  = if x > y then maxi x:xs else maxi y:xs