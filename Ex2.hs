-- Exercise 2

grid, square :: Int -> Int -> [(Int, Int)]
grid x y = [(x,y) | x <- [0..x], y <- [0..y]]
square x y = [(x, y) | x <- [0..x], y <- [0..y], x /= y]
