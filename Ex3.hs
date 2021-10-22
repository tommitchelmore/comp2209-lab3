-- Exercise 3

replicate' :: Int -> a -> [a]
replicate' n a = [a | x <- [0..n-1]]
