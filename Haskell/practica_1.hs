-- PD 2010-11
-- 1ª práctica (5 de octubre)
-- Departamento de Ciencias de la Computación e I.A.
-- Universidad de Sevilla
-- =====================================================================
 
-- import Test.QuickCheck 
 
-- ---------------------------------------------------------------------
-- Ejercicio 1. Definir la función producto que calcule el producto de
-- una lista de números y, usando la definición, demostrar que producto
-- [2, 3, 4] = 24. 
-- ---------------------------------------------------------------------

productoLista :: Num a => [a] -> a
productoLista [] = 1
productoLista (x:xs) = x*(productoLista xs)

-- ---------------------------------------------------------------------
-- Ejercicio 2. 
-- a) ¿Cómo hay que modificar la definición de ordena de las
-- transparencias del tema 1 para que devuelva la lista ordenada de mayor 
-- a menor? 
-- ---------------------------------------------------------------------
-- b) ¿Cuál es el efecto de cambiar <= por < en la definición de ordena? 
-- ---------------------------------------------------------------------
-- c) ¿Cuál es el valor de ordena [2,2,3,1,1] con la nueva definición? 
-- Escribir su cálculo.
-- ---------------------------------------------------------------------

ordena [] = []
ordena (x:xs) = (ordena mayores) ++ [x] ++ (ordena menores)
      where menores = [a | a <- xs, a <= x]
            mayores = [b | b <- xs, b > x]


-- ---------------------------------------------------------------------
-- Ejercicio 3. La siguiente definición contiene 4 errores sintácticos. 
-- Corregir los errores y comprobar que la definición es correcta
-- calculando con Haskell el valor de n. 
--    n = A ’div’ length xs
--          where
--              A = 10
--             xs = [1, 2, 3, 4, 5]
-- --------------------------------------------------------------------- 

n = div b (length xs)
       where b = 10
             xs = [1, 2, 3, 4, 5]

-- ---------------------------------------------------------------------
-- Ejercicio 4. Definir la función ultimo tal que (ultimo xs) es el
-- último elemento de la lista no vacía xs. Por ejemplo, 
--    ultimo [2,5,3]  ==>  3
-- Dar dos definiciones usando las funciones introducidas en el tema 2 y
-- comprobar su equivalencia con QuickCheck.
-- 
-- Nota: La función ultimo es la predefinida last.
-- ---------------------------------------------------------------------

ultimo :: [a] -> a
ultimo xs = xs !! ((length xs) -1)

-- ---------------------------------------------------------------------
-- Ejercicio 4. Definir la función iniciales tal que (iniciales xs) es
-- la lista obtenida eliminando el último elemento de la lista no vacía
-- xs. Por ejemplo, 
--    iniciales [2,5,3]  ==>  [2,5]
-- Dar dos definiciones usando las funciones introducidas en este tema y
-- comprobar su equivalencia usando QuickCheck.
--- 
-- Nota: La función iniciales es la predefinida init.
-- ---------------------------------------------------------------------

iniciales :: [a] -> [a]
iniciales xs = reverse (tail (reverse xs))


