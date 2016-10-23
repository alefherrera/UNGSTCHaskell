funcion x = x * x - 2
derivada x = 2 * x

newton f p x 0 = x
newton f p x n = newton f p x (n-1) - f(newton f p x (n-1)) / p(newton f p x (n-1))

reduce n a = if n - a < 0 then 0 else n - a

secante f x 0 = x
secante f x n =
  secante f x (n-1) - f(secante f x (n-1)) *
  (secante f x (n-1) - secante f x (n-2)) /
  (f(secante f x (n-1)) - f(secante f x (n-2)))

rectangulo f a b n = sum[ f((b-a) / n * i) | i <- [1..n] ] * (b - a) / n
