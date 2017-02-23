mygcd :: Int -> Int -> Int
mygcd a 0 = a
mygcd a b = mygcd b (a `mod` b)

coprime :: Int -> Int -> Bool
coprime a b = 1 == mygcd a b
