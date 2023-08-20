choose :: Integer -> Integer -> Integer
choose 0 0 = 0
choose n k = product [1..n] `div` ((product [1..k])*(product [1..(n-k)]))


c :: Integer -> Integer

c n 
 | n <= 1 = 1
 | even n = until c (n `div` 2) n
 | otherwise = until c (3 * n + 1) n