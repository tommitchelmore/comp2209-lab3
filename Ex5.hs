-- Exercise 5

perfect :: Int -> [Int]
perfect n = [x | x <- [1..n], sum (init (factors x)) == x]
    where factors n = [x | x <- [1..n], n `mod` x == 0]
