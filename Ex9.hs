-- Exercise 9

euclid :: Int -> Int -> Int
euclid x y | x == 0 = y
           | otherwise = euclid (y `mod` x) x
