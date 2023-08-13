myMap :: (a -> b) -> [a] -> [b]
-- define your function here!
myMap tst [] = []
myMap tst xs = [tst x | x <- xs]

myFilter :: (a -> Bool) -> [a] -> [a]
-- define your function here!
myFilter tst [] =  []
myFilter tst xs = [x | x <- xs, tst x]

l = [ x++" "++y
    | x <- ["hello", "fly away", "come back"]
    , length x > 7
    , y <- ["peter", "matthew", "paul"]
    , length y < 7
    ]


matches :: Eq a => [a] -> [a] -> Int
-- define your function here
matches xs ys = length [x 
                | x <- xs
                , y <- ys
                , x == y
                ]

compDNA :: String -> String -> Bool
compDNA xs ys = and [(pairs x y) 
                | (x,y) <- zip xs ys] -- implement your function here!
-- don't forget that you can write helper functions too

pairs :: Char -> Char -> Bool
pairs 'A' 'T' = True
pairs 'T' 'A' = True
pairs 'C' 'G' = True
pairs 'G' 'C' = True
pairs _ _ = False

-- pyth :: [(Integer,Integer,Integer)]
-- pyth =  [[(a,b,c)(b,a,c)]  <- [(a,b,c)

--             | c <- [1..]
--             , b <- [1..c]
--             , a <- [1..b]
--             , a^2 + b^2 == c^2]]

pyth :: [(Integer,Integer,Integer)]
pyth =  [(a,b,c)  
        | c <- [1..]
        , a <- [1..c]
        , b <- [1..ceiling(sqrt (fromIntegral (c^2-a^2)))]
        , a^2 + b^2 == c^2]

-- pyth :: [(Integer, Integer, Integer)]
-- pyth = [(a, b, c)
--         | (a, b, c) <- zip
--             [(a, b, c)
--              | c <- [1..]
--              , b <- [1..c]
--              , a <- [1..b]
--              , a^2 + b^2 == c^2]
--             [(b, a, c)
--              | c <- [1..]
--              , b <- [1..c]
--              , a <- [1..b]
--              , a^2 + b^2 == c^2]
--        ]

-- pyth :: [(Integer, Integer, Integer)]
-- pyth = originalPyth ++ swappedPyth
--   where
--     originalPyth = [(a, b, c) | c <- [1..], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
--     swappedPyth = [(b, a, c) | (a, b, c) <- originalPyth]

    -- pyth :: [(Int, Int, Int)]
-- pyth = [(a, b, c) | c <- [1..], a <- [1..c], b <- [a..c], a^2 + b^2 == c^2]

-- pyth' :: [(Int, Int, Int)]
-- pyth' = pyth ++ [(b, a, c) | (a, b, c) <- pyth, (b, a, c) `notElem` pyth]


-- pyth :: [(Integer, Integer, Integer)]
-- pyth =  [(a, b, c) | c <- [1..], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2] ++
--         [(b, a, c) | c <- [1..], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, (b, a, c) `notElem` pyth]
