-- PD 2010-11
-- 5� pr�ctica (9 de noviembre)
-- Departamento de Ciencias de la Computaci�n e I.A.
-- Universidad de Sevilla
-- =====================================================================

-- ---------------------------------------------------------------------
-- Ejercicio 1.1 Redefine por recursi�n la funci�n
--    takeWhile :: (a -> Bool) -> [a] -> [a]
-- tal que (takeWhile p xs) es la lista de los elemento de xs hasta el
-- primero que no cumple la propiedad p. Por ejemplo,
--    takeWhile (<7) [2,3,9,4,5]  =>  [2,3]
-- ---------------------------------------------------------------------

-- La definici�n es
takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = [] 
takeWhile' p (x:xs) = if p x then [x] ++ (takeWhile' p xs) else []


-- ---------------------------------------------------------------------
-- Ejercicio 1.2 Redefinir por recursi�n la funci�n
--    dropWhile :: (a -> Bool) -> [a] -> [a]
-- tal que (dropWhile p xs) es la lista de los elemento de xs eliminando 
-- hasta el primero que no cumple la propiedad p. Por ejemplo,
--    dropWhile' (<7) [2,3,9,4,5]  =>  [9,4,5]
-- ---------------------------------------------------------------------

-- La definici�n es
dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' p (x:xs) = if p x then (dropWhile' p xs) else [x] ++ xs


-- ---------------------------------------------------------------------
-- Ejercicio 2. Se considera la funci�n 
--    filtraAplica :: (a -> b) -> (a -> Bool) -> [a] -> [b]
-- tal que (filtraAplica f p xs) es la lista obtenida aplic�ndole a los
-- elementos de xs que cumplen el predicado p la funci�n f. Por ejemplo,
--    filtraAplica (4+) (<3) [1..7]  =>  [5,6]
-- Se pide:
-- 1. Definir la funci�n usando recursi�n.
-- 2. Definir la funci�n usando listas de comprensi�n.
-- 3. Definir la funci�n usando map y filter.
-- ---------------------------------------------------------------------

-- La definic�n con recursi�n es:
filtraAplica1 :: (a -> b) -> (a -> Bool) -> [a] -> [b]
filtraAplica1 _ _ [] = []
filtraAplica1 f p (x:xs) = if p x then [f x] ++ (filtraAplica1 f p xs)
                           else filtraAplica1 f p xs

-- La definic�n con lista de comprensi�n es:
filtraAplica2 :: (a -> b) -> (a -> Bool) -> [a] -> [b]
filtraAplica2 f p xs = [f x|x <- xs, p x]

-- La definic�n con map y filter es:
filtraAplica3 :: (a -> b) -> (a -> Bool) -> [a] -> [b]
filtraAplica3 f p xs = map f (filter p xs)


-- ---------------------------------------------------------------------
-- Ejercicio 3. Se considera la funci�n
--    all :: (a -> Bool) -> [a] -> Bool
-- tal que (all p xs) se verifica si todos los elementos de xs cumplen
-- la propiedad p. Por ejemplo,
--    all (<7) [2,3,5]  =>  True
--    all (<4) [2,3,5]  =>  False
-- Se pide:
-- 1. Definir la funci�n usando recursi�n.
-- 2. Definir la funci�n usando listas de comprensi�n.
-- 3. Definir la funci�n usando filter.
-- ---------------------------------------------------------------------

-- La definic�n con recursi�n es:
all1 :: (a -> Bool) -> [a] -> Bool
all1 _ [] = True
all1 p (x:xs) | p x = True && (all1 p xs)
              | otherwise = False

-- La definic�n con lista de comprensi�n es:
all2 :: (a -> Bool) -> [a] -> Bool
all2 p xs = and [p x | x <- xs]

-- La definic�n con filter es:
all3 :: (a -> Bool) -> [a] -> Bool
all3 p xs = length xs == length (filter p xs)


-- ---------------------------------------------------------------------
-- Ejercicio 4. Define la funci�n
--    dec2ent :: [Int] -> Int
-- tal que (dec2ent xs) es el entero correspondiente a la expresi�n
-- decimal xs. Por ejemplo,
--    dec2ent [2,3,4,5]  =>  2345
-- ---------------------------------------------------------------------

dec2ent :: [Int] -> Int
dec2ent [] = 0
dec2ent (x:xs) = x*(10^(length xs)) + (dec2ent xs)

-- ----------------------------------------------------------------------



