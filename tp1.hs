funcion x = x * x - 2
derivada x = 2 * x

newton f p x 0 = x
newton f p x n = newton f p x (n-1) - f(newton f p x (n-1)) / p(newton f p x (n-1))

secante f x 0 = x
secante f x 1 = 2 * x
secante f x n =
  secante f x (n-1) - f(secante f x (n-1)) *
  (secante f x (n-1) - secante f x (n-2)) /
  (f(secante f x (n-1)) - f(secante f x (n-2)))

rectangulo f a b n = (b - a) / n * sum[ f(a + (b-a) / n * i) | i <- [1..n] ]
trapecio f a b n = ((b - a) / (2 * n)) * (f(a) +  2 * sum[f(a + (b-a)/n * i) | i <- [2..(n-1)] ] + f(b))
