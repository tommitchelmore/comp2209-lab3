-- Exercise 4

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x <= n, y <= n, z <= n, x^2 + y^2 == z^2]
