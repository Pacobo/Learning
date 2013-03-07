-- PD 2010-11
-- 2� pr�ctica (19 de octubre)
-- Departamento de Ciencias de la Computaci�n e I.A.
-- Universidad de Sevilla
-- =====================================================================
 
import Test.QuickCheck 

-- ---------------------------------------------------------------------
-- Ejercicio 1. Define la funci�n media3 que recibe como argumentos 
-- tres n�meros y devuelve la media aritm�tica de dichos n�meros. Por 
-- ejemplo, 
--    media3 1 3 8     =>  4.0
--    media3 (-1) 0 7  =>  2.0
--    media3 (-3) 0 3  =>  0.0

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------
media3 :: (Fractional a) => a -> a -> a -> a
media3 x y z = (x+y+z)/3

-- ---------------------------------------------------------------------
-- Ejercicio 2. Define la funci�n sumaMonedas que recibe los
-- siguientes argumentos: euros, dos-euros, cinco-euros, diez-euros y
-- veinte-eros y devuelve la cantidad total de euros. Por ejemplo,
--    sumaMonedas 0 0 0 0 1  =>  20
--    sumaMonedas 0 0 8 0 3  => 100
--    sumaMonedas 1 1 1 1 1  =>  38

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------
sumaMonedas :: (Num a) => a -> a -> a -> a -> a -> a
sumaMonedas x y z t u = x + 2*t + 5*z + 10*t + 20*u

-- ---------------------------------------------------------------------
-- Ejercicio 3. Define la funci�n intercala que recibe dos listas xs e 
-- ys de dos elementos cada una, y devuelve una lista de cuatro 
-- elementos, construida intercalando los elementos de xs e ys. Por
-- ejemplo,
--    intercala [1,4] [3,2]  =>  [1,3,4,2]

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------
intercala :: [a]-> [a] -> [a]
intercala [x,y] [z,t] = [x,z,y,t]


-- ---------------------------------------------------------------------
-- Ejercicio 4. Define la funci�n reagrupa que toma una tupla cuyos
-- elementos son tres tuplas de tres elementos cada una, y act�a del 
-- siguiente modo:
--    reagrupa ((1,2,3),(4,5,6),(7,8,9))  =>  ((1,4,7),(2,5,8),(3,6,9))

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------
reagrupa :: ((a,b,c),(d,e,f),(g,h,i)) -> ((a,d,g),(b,e,h),(c,f,i))
reagrupa ((a,b,c),(d,e,f),(g,h,i)) = ((a,d,g),(b,e,h),(c,f,i))

-- ---------------------------------------------------------------------
-- Ejercicio 5. Define la funci�n maxMin que recibe cuatro n�meros, y 
-- devuelve una lista formada por dos pares de la forma ("min",x) y 
-- ("max". y) donde x e y son el m�nimo y el m�ximo de los cuatro 
-- n�meros.
--    maxMin 2 5 (-1) 7  => [("min",-1),("max",7)]
--    maxMin 0 5 9 4     => [("min",0),("max",9)]
-- Indicaci�n: Usar las funciones minimum y maximum.

-- �Cu�l es el tipo m�s general de la funci�n?
-- ---------------------------------------------------------------------
maxMin :: (Ord a) => a -> a -> a -> a -> [(String,a)]
maxMin x y z t = [("min",minimum [x,y,z,t] ),("max",maximum [x,y,z,t] )]

-- ---------------------------------------------------------------------
-- Ejercicio 6. Define la funci�n
--    tailSeguro :: [a] -> [a] 
-- que se comporta como la funci�n tail, excepto que tailSeguro aplica
-- la lista vac�a en s� misma y tail devuelve error en ese caso. Da
-- cuatro definiciones distintas utilizando
--    1. una expresi�n condicional
--    2. guardas
--    3. patrones
-- Comprobar con QuickCheck que las definiciones son equivalentes.
-- 
-- Indicaci�n: Usar la funci�n null.
-- --------------------------------------------------------------------
tailSeguro1 :: [a] -> [a]
tailSeguro1 xs = if null xs then [] else tail xs

tailSeguro2 :: [a] -> [a]
tailSeguro2 xs | null xs = []
               | otherwise = tail xs

tailSeguro3 :: [a] -> [a]
tailSeguro3 [] = []
tailSeguro3 (_:xs)= xs

prop_tailSeguro :: (Eq a) => [a] ->  Bool
prop_tailSeguro xs = tailSeguro1 xs == tailSeguro2 xs && tailSeguro1 xs == tailSeguro3 xs

-- ---------------------------------------------------------------------
-- Ejercicio 7. La disyunci�n excluyente xor de dos f�rmulas se verifica
-- si una es verdadera y la otra es falsa.
-- ---------------------------------------------------------------------
-- Ejercicio 7.1. Define la funci�n xor_1 que calcule la disyunci�n
-- excluyente a partir de la tabla de verdad. Usar 4 ecuaciones, una por
-- cada l�nea de la tabla.
-- ---------------------------------------------------------------------
xor_1 :: Bool -> Bool -> Bool
xor_1 True True = False
xor_1 False True = True 
xor_1 True False = True
xor_1 False False = False 
-- ---------------------------------------------------------------------
-- Ejercicio 7.2. Define la funci�n xor_2 que calcule la disyunci�n
-- excluyente a partir de la tabla de verdad y patrones. Usa 2
-- ecuaciones, una por cada valor del primer argumento.
-- ---------------------------------------------------------------------
xor_2 :: Bool -> Bool -> Bool
xor_2 True y = not y
xor_2 False y = y

-- ---------------------------------------------------------------------
-- Ejercicio 7.3. Define la funci�n xor_3 que calcule la disyunci�n
-- excluyente a partir de la disyunci�n (||), conjunci�n (&&) y negaci�n
-- (not). Usar 1 ecuaci�n.
-- ---------------------------------------------------------------------

xor_3 :: Bool -> Bool -> Bool
xor_3 x y = ( x || y) && not ( x && y)

-- ---------------------------------------------------------------------
-- Ejercicio 7.4. Define la funci�n xor_4 que calcule la disyunci�n
-- excluyente a partir de desigualdad (/=). Usa 1 ecuaci�n.
-- ---------------------------------------------------------------------
xor_4 :: Bool -> Bool -> Bool
xor_4 x y = x/= y
-- ---------------------------------------------------------------------
-- Ejercicio 7.5. Comprobar con QuickCheck la equivalencia de las 4
-- definiciones anteriores.
-- ---------------------------------------------------------------------
propXor :: Bool -> Bool -> Bool
propXor x y = xor_1 x y == xor_2 x y &&
              xor_2 x y == xor_3 x y &&
              xor_3 x y == xor_4 x y