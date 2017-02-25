dupli :: [a] -> [a]
dupli [x] = [x,x]
dupli (x:xs) = dupli [x] ++ dupli xs
dupli [] = error "Empty list cannot be duplicated"

repli :: [a] -> Int -> [a]
repli x 0 = x
repli [x] n = [x] ++ repli [x] (n-1)
repli (x:xs) n = repli [x] (n-1) ++ repli xs n
repli [] n  = error "Empty list cannot be replicated"

split :: [a] -> Int -> ([a],[a])
split x i = (slice x 1 i, slice x i (length x)) --lazy, I know :-)

slice :: [a] -> Int -> Int -> [a]
slice (x:xs) 1 1 = [x]
slice (x:xs) 1 k = [x] ++ slice xs 1 (k-1)
slice (x:xs) i k = slice xs (i-1) (k-1)

removeAt :: Int -> [a] -> (a,[a])
removeAt i x = (x !! (i-1), take (i-1) x ++ drop i x)
