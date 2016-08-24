import Data.List
{-- *** alternativa si unicamente se requieren unas
    	cuantas funciones de un modulo
	* import Data.List (nub, sort)
	
	*** alternativa para excluir alguna funcion
	    de un modulo
	* import Data.List hiding (nub)
	
	*** si se usara la notacion de puntos para
	    refererise a una funcion especifica de ese modulo
	* import qualified Data.map
	**** para usarse como
	* Data.Map.filter
	*** a si sabra usar filter del modulo Data.Map y no del 
	    modulo prelude
	*** existe una forma mas corta y eficiente usando
	    un alias
	*import qualified Data.Map as M
	* M.filter
--}

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

numUniques' :: (Eq a) => [a] -> Int
numUniques' = \xs -> length $ nub xs