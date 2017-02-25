isPrime :: Int -> Bool
isPrime 1 = True
isPrime 2 = True
isPrime n = (==) (length [i | i <- [2..n-1], n `mod` i == 0]) 0

mygcd :: Int -> Int -> Int
mygcd a 0 = a
mygcd a b = mygcd b (a `mod` b)

coprime :: Int -> Int -> Bool
coprime a b = 1 == mygcd a b

totient :: Int -> Int
totient 1 = 1
totient m = length (filter (coprime m) [1..m])

primesR :: Int -> Int -> [Int]
primesR a b = filter isPrime [a..b]

goldbach :: Int -> (Int,Int)
goldbach n
         | n `mod` 2 == 0 = [(i,j) | i <- primesR 1 n,
                                     j <- primesR 1 n, i+j == n] !! 0
         | otherwise = error "Enter an even number"

goldbachList :: Int -> Int -> [(Int,Int)]
goldbachList a b = [goldbach i | i <- [a..b], i `mod` 2 == 0]

goldbachList' :: Int -> Int -> Int -> [(Int,Int)]
goldbachList' a b c = filter (\t -> fst t > c && snd t > c) (goldbachList a b)
--works in theory, but impractical for huge numbers
