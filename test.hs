-- funciones
duplicar x = x * 2
promedio x y = (x+y) / 2
duplicardos x y = duplicar x + duplicar y
duplicarSiChico x = if x > 100 then x else x * 2

-- listas
nums = [1,2,3,4,5,6]
first = head nums
t = tail nums
ultimo = last nums
inicio = init nums
largo = length nums
tomar3 = take 3 nums
tirar3 = drop 3 nums
maximo = maximum nums
minimo = minimum nums
suma = sum nums
multiplicacion = product nums

-- rangos
rango = [1..20]
tomar10 = take 10 (cycle [1,2,3])
tomar10repetido = take 10 (repeat 5)

-- declaraciones
lista1 = [ x * 2 | x <- [1..10]]
listaCuadrada = [ x ^ 2 | x <- [1..10]]
