data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = ( abs $ x2 - x1 ) * ( abs $ y2 - y1 )

{-
data Person = Person String String Int Float String String deriving (Show)
let guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"

firstName :: Person -> String
firstName (Person firstName _ _ _ _ _ ) = firstName
.
..
...
....
-}

-- Sintaxis de registro
data Person = Person { firstName :: String
					 , lastName ::String
					 , age :: Int
					 , height :: Float
					 , phoneNumber :: String
					 , flavor :: String
					 } deriving (Show)


{--
	Sintaxis de registro
--}

data Car = Car {company :: String, model :: String, year :: Int} deriving (Show)
let car = Car{company="Ford", model="Mustang", year=1967}













