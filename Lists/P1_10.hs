myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs
myLast [] = error "Empty list!"

myButLast :: [a] -> a
myButLast [x,_] = x
myButLast [x] = error "More than one element is needed"
myButLast (x:xs) = myButLast xs
myButLast [] = error "Empty list!"

elementAt :: [a] -> Int -> a
elementAt (x:xs) 0 = x
elementAt (x:xs) n = elementAt xs (n-1)

myLength :: [a] -> Int
myLength [] = 0
myLength [x] = 1
myLength (x:xs) = 1 + myLength xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = x == myReverse x
