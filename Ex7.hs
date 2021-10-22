-- Exercise 7

scalarProduct :: [Int] -> [Int] -> Int
scalarProduct xs ys | length xs /= length ys = error "Lists must be same length"
                    | otherwise = sum [x * y | (x,y) <- zip xs ys]
