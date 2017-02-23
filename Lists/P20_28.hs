insertAt :: a -> [a] -> Int -> [a]
insertAt e x 0 = [e] ++ x
insertAt e (x:xs) n = [x] ++ insertAt e xs (n-1)

range :: Int -> Int -> [Int]
range a b 
      | a < b = [a] ++ range (a+1) b
      | a == b = [a]
      | a > b = [a] ++ range (a-1) b
