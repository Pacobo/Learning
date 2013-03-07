-- PD 2010-11
-- 4� pr�ctica (2 de noviembre)
-- Departamento de Ciencias de la Computaci�n e I.A.
-- Universidad de Sevilla
-- =====================================================================
-- ----------------------------------------------------------------------------
-- Ejercicio 1 
-- ----------------------------------------------------------------------------
-- Define la funci�n posici�n tal que (posicion x xs) es la primera 
-- posici�n del elemento x en la lista ys (empezando a contar por 1) 
-- o bien 0 si x no pertenece a lista xs. Por ejemplo:
--
-- posicion 5 [1,5,3,5,6,5,3,4] => 2
-- posicion 'l' "Haskell"       => 6
-- posicion 7 [1,5,3,5,6,5,3,4] => 0
--
-- Da una definici�n por recursi�n y otra usando listas de comprensi�n.
-- -----------------------------------------------------------------------------

posicion :: Eq a => a -> [a] -> Int
posicion x [] = 0
posicion x (x1:xs) | x==x1 = 1
                   | otherwise = if (posicion x xs)==0 then 0 else
                                     (posicion x xs) +1

-- ----------------------------------------------------------------------------
-- Ejercicio 2 
-- ----------------------------------------------------------------------------
-- Se dice que una sucesi�n x1,...,xn est� ordenada c�clicamente si existe 
-- un �ndice i tal que la sucesi�n xi, xi+1, ..., xn, x1, ..., xi-1 est� 
-- ordenada (en orden creciente). Define la funci�n
--      ordenadaCiclicamente :: Ord a => [a] -> Int
-- tal que (ordenadaCiclicamente xs) es el primer �ndice, empezando a contar 
-- los �ndices por 1, a partir del cual est� ordenada si la lista est� ordenada
-- c�clicamente; y 0 en caso contrario. Por ejemplo:
--
-- ordenadaCiclicamente [1,2,3,4]     => 1
-- ordenadaCiclicamente [4,6,7,5,4,3] => 0
-- ordenadaCiclicamente [5,8,2,3]     => 3
-- ordenadaCiclicamente [7,9,2,2,2]   => 3
-- ------------------------------------------------------------------------------

estaOrdenado xs = x <- xs

ordenaCiclicamente :: Ord a => [a] -> Int
ordenaCiclicamente (x:xs) = concat[(drop n xs),(take n xs)]

ordenaCicliAux 
ordenaCicliAux n xs = concat[drop n xs,take n xs]

-- ----------------------------------------------------------------------------
-- Ejercicio 3 
-- ----------------------------------------------------------------------------
-- La conjetura de Goldbach dice que todo n�mero par mayor que dos puede 
-- obtenerse como la suma de dos n�meros primos. Por ejemplo, 28 = 5 + 23.
-- Esta conjetura es uno de los problemas abiertos m�s famosos en la teor�a 
-- de n�meros. Se ha comprobado que es cierta para una gran cantidad de 
-- casos, pero se desconoce si es o no cierta para cualquier n�mero par por 
-- grande que sea.
-- Define una funci�n (goldbach x) que devuelva un par de n�meros primos 
-- (a,b) tales que x = a + b.  Por ejemplo:
--
-- goldbach 28 = (5,23)
-- goldbach 36 = (13,23)
-- ----------------------------------------------------------------------------

golbach :: Num a => a -> (a,a)
golbach x | even x && x > 2 = 
          | otherwise = (0,0)


