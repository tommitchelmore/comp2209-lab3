-- Exercise 10

minHamming :: Eq a => [[a]] -> Int
minHamming xs = minimum [calculateHamming (a,b) | a <- xs, b <- xs, a /= b]
    where calculateHamming (xs,ys) = calculateHamming' xs ys  0
          calculateHamming' [] [] n = n
          calculateHamming' (a:as) (b:bs) n | a == b = calculateHamming' as bs n
                                            | a /= b = calculateHamming' as bs (n + 1)
