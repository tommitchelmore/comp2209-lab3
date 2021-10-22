-- Exercise 8 - as IF this just worked first time :D

shorter :: [a] -> [a] -> Bool
shorter [] [] = False
shorter [a] [] = False
shorter (x:xs) (y:ys) = shorter xs ys
shorter [] [a] = True
