{-
	*lista intencional que remplace cada numero
	impar mayor a diez por "BANG" y cada numero impar menor a diez
	por "BOOM". si un numero no es impar, lo dejamos fuera de la lista.

	*odd : regresa True si el parametro numerico es impar
-}

boomBangs xs = [ if x < 10 then "BOOM" else "BANG" | x <- xs, odd x ]

{-
	texas range
	esta sentencia genera rangos de valores dado condicionales definidas
	ejemplo: generar una lista con valores del 20 al 40 -> [ 20..40 ]
	tambien es pocible indicar el incremento en cada valor de la lista
	ejemplo : [ 2,4..20 ] : generara una lista con elementos pares 
	del 2 al 20 toma como referencia la resta que existe entre el segundo 
	y primer numero.
sum [ 1..20 ]


-- head -> toma el primer elemento de la lista
head [1..10]

-- tal -> toma todos los elementos de la lista exceptuando al primero
tail [1..10]

-- last -> toma el ultimo elemento de la lista
-}

length' xs = sum[ 1 | _<- xs ]