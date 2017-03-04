data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show,Eq)

symmetric :: Tree a -> Bool
symmetric (Empty) = True
symmetric (Branch x y z) = mirror y z
          where mirror (Empty) (Empty) = True
                mirror (Empty) _ = False
                mirror _ (Empty) = False
                mirror _ _ = True 
