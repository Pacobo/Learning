-- PD 2010-11
-- 3� pr�ctica (26 de octubre)
-- Departamento de Ciencias de la Computaci�n e I.A.
-- Universidad de Sevilla
-- =====================================================================
import Test.QuickCheck 
import Char
-- ----------------------------------------------------------------------------
-- Ejercicio 1 (Extracciones e inserciones)
-- ----------------------------------------------------------------------------
-- Ejercicio 1.1. Define la funci�n extrae tal que (extrae xs n) es la lista
-- resultado de eliminar el elemento n-�simo de la lista xs. Si n es negativo
-- o mayor que la longitud de la lista, el resultado debe ser la misma
-- lista. Por ejemplo,
--    extrae [1,2,3,4,5] 2     ==>  [1,2,4,5] 
--    extrae [1,2,3,4,5] 4     ==>  [1,2,3,4] 
--    extrae [1,2,3,4,5] (-1)  ==>  [1,2,3,4,5] 
--    extrae [1,2,3,4,5] 7     ==>  [1,2,3,4,5] 
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- Ejercicio 1.2. Define la funci�n inserta tal que (inserta xs x n) debe
-- introducir el elemento x en la posici�n n de la lista xs. Si (n<=0) el
-- elemento se insertar� al principio de la lista. Si n es igual o mayor que
-- la longitud de la lista, el elemento x se colocar� al final de la lista. Por
-- ejemplo,
--    inserta [1,3,5] 7 1     ==>  [1,7,3,5]
--    inserta [1,3,5] 7 3     ==>  [1,3,5,7] 
--    inserta [1,3,5] 7 (-1)  ==>  [7,1,3,5] 
--    inserta [1,3,5] 7 9     ==>  [1,3,5,7] 
-- ----------------------------------------------------------------------------



-- ----------------------------------------------------------------------------
-- Ejercicio 1.3. Comprobar con QuickCheck que si se inserta el elemento
-- n-�simo de una lista xs en la posici�n n de la lista resultante de extraer el 
-- elemento n-�simo de xs, entonces se obtiene de nuevo la lista xs.
-- ----------------------------------------------------------------------------




-- ----------------------------------------------------------------------------
-- Ejercicio 2. (Reconocimiento de permutaciones)
-- ----------------------------------------------------------------------------
-- Una permutaci�n de una lista es otra lista con los mismos elementos,
-- pero posiblemente en distinto orden. Por ejemplo, [1,2,1] es una
-- permutaci�n de [2,1,1] pero no de [1,2,2].
--
-- Definie la funci�n esPermutacion tal que (esPermutacion xs ys) se verifique 
-- si xs es una permutaci�n de ys. Por ejemplo, 
--    esPermutacion [1,2,1] [2,1,1]  ==>  True
--    esPermutacion [1,2,1] [1,2,2]  ==>  False
-- * Comprobar con QuickCheck que si una lista es una permutaci�n de
-- otra, las dos tienen el mismo n�mero de elementos. 
-- * Comprobar con QuickCheck que la inversa de una lista es una
-- permutaci�n de la lista.
-- ----------------------------------------------------------------------------


-- ----------------------------------------------------------------------------
-- Ejercicio 3. (May�sculas iniciales)
-- ----------------------------------------------------------------------------
-- Se consideran las siguientes reglas de may�sculas iniciales para los t�tulos: 
--    * la primera palabra empieza con may�scula, 
--    * todas las palabras que tienen 4 letras como m�nimo empiezan
--      con may�sculas,
--    * el resto de caracteres se escriben en min�scula.
--
-- Define la funci�n titulo tal que (titulo ps) es la lista de las palabras 
-- de ps con las reglas de may�sculas iniciales de los t�tulos. Por ejemplo,
--    *Main> titulo ["eL","arTE","DE","La","proGraMacion"]
--    ["El","Arte","de","la","Programacion"]
-- Nota: Usa las funciones toLower y toUpper del m�dulo Char.
-- ----------------------------------------------------------------------------








-- ----------------------------------------------------------------------------
-- Ejercicio 4.
-- ----------------------------------------------------------------------------

-- Haciendo uso de la lista [1..10] definir las siguientes listas por
-- comprensi�n. 

-- [11,12,13,14,15,16,17,18,19,20] 
-- [[2],[4],[6],[8],[10]] 
-- [10,9,8,7,6,5,4,3,2,1] 
-- [True,False,True,False,True,False,True,False,True,False] 
-- [(3,True),(6,True),(9,True),(12,False),(15,False),(18,False)] 
-- [(11,12),(13,14),(15,16),(17,18),(19,20)]  
-- [[5,6,7],[5,6,7,8,9],[5,6,7,8,9,10,11],[5,6,7,8,9,10,11,12,13]]     
-- ----------------------------------------------------------------------------










-- ----------------------------------------------------------------------------
-- Ejercicio 5.
-- ----------------------------------------------------------------------------
-- Definir una funci�n esSubcadena (usar la funci�n(isPrefixOf ys xs)
-- que se verifica si ys es un prefijo de xs del m�dulo Data.List),
-- para determinar si una cadena x aparece en otra y..








-- ----------------------------------------------------------------------------
