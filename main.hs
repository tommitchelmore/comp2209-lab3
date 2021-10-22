first, firstSquared, firstCubed :: Int
first = sum [x | x <-  [1..100]]
firstSquared = sum [x^2 | x <- [1..100]]
firstCubed = sum [x^3 | x <- [1..100]]

grid, square :: Int -> Int -> [(Int, Int)]
grid x y = [(x,y) | x <- [0..x], y <- [0..y]]
square x y = [(x, y) | x <- [0..x], y <- [0..y], x /= y]

replicate' :: Int -> a -> [a]
replicate' n a = [a | x <- [0..n-1]]

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x <= n, y <= n, z <= n, x^2 + y^2 == z^2]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfect :: Int -> [Int]
perfect n = [x | x <- [1..n], sum (init (factors x)) == x]

scalarProduct :: [Int] -> [Int] -> [(Int, Int)]
scalarProduct xs ys | length xs /= length ys = error "Lists must be same length"
                    | otherwise = sum [x*y | (x,y) <- zip xs ys ]