

fibo 0 = 0
fibo 1 = 1
fibo n = fibo(n-2) + fibo(n-1)

sinDivHasta m 1 = True
sinDivHasta m n | n > 1 = sinDivHasta m (n-1) && mod m n /= 0

primo 1 = False
primo n | n > 1 = sinDivHasta n (n-1)

-- Ejercicio 8
l1 = ["a", "ab"]
l2 = ["c", "a"]
sacarRep 1 lista = [lista!!0]
sacarRep n lista = if lista!!(n-1) `elem` sacarRep(n-1) lista
                   then sacarRep(n-1) lista
                   else sacarRep(n-1) lista ++ [lista!!(n-1)]

conjunto lista = sacarRep (length lista) lista
-- Ejercicio 9
union lista1 lista2 = conjunto lista1 ++ lista2
-- Ejercicio 10
producto j [] = j
producto [] j = j
producto j k = [x ++ y | x <- j , y <- k]
-- Ejercicio 11
potencia 0 lista = []
potencia 1 lista = lista
potencia n lista = producto lista (potencia (n-1) lista)
