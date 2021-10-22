-- Exercise 1

first, firstSquared, firstCubed :: Int
first = sum [x | x <-  [1..100], odd x]
firstSquared = sum [x^2 | x <- [1..100], odd x]
firstCubed = sum [x^3 | x <- [1..100], even x]
