dupli :: [a] -> [a]
dupli [x] = [x,x]
dupli (x:xs) = dupli [x] ++ dupli xs
dupli [] = error "Empty list cannot be duplicated"

repli :: [a] -> Int -> [a]
repli x 0 = x
repli [x] n = [x] ++ repli [x] (n-1)
repli (x:xs) n = repli [x] (n-1) ++ repli xs n
repli [] n  = error "Empty list cannot be replicated"
