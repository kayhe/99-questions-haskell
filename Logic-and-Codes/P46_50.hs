and' :: Bool -> Bool -> Bool
and' a b = (&&) a b

or' :: Bool -> Bool -> Bool
or' a b = (||) a b

nand' :: Bool -> Bool -> Bool
nand' a b = not' ((&&) a b)

nor' :: Bool -> Bool -> Bool
nor' a b = not' ((||) a b)

not' :: Bool -> Bool
not' x = if x == True then False else True

impl' :: Bool -> Bool -> Bool
impl' a b
        | a == True && b == False = False
        | otherwise = True

equ' :: Bool -> Bool -> Bool
equ' a b = a == b

table :: (Bool->Bool->Bool) -> IO () 
table f = do
        putStrLn $ "True True " ++ show (f True True)
        putStrLn $ "True False " ++ show (f True False)
        putStrLn $ "False True " ++ show (f False True)
        putStrLn $ "False False " ++ show (f False False)

--Note concerning P47: nearly all logical functions can be used as operators
--so no need to implement anything
