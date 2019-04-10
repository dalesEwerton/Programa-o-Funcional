module BSTree (insert, single) where

  data BinaryTree a = Null | Node a (BinaryTree a) (BinaryTree a)
   deriving (Eq,Show)

  single :: a -> BinaryTree a
  single n = Node n Null Null

  createBst (x:xs) = foldl insert intialTree xs
    where intialTree = single x

  insert :: Ord a => BinaryTree a -> a -> BinaryTree a
  insert (Node v l r) v'
    | v' < v    = Node v (insert l v') r
    | v' > v    = Node v l (insert r v')
    | otherwise = Node v l r

  insert _ v' = Node v' Null Null

  -- search :: Ord a => Tree a -> a -> Bool

  -- search (Node v l r) v'
  --   | v' < v      = find l v'
  --   | v' > v      = find r v'
  --   | otherwise   = True

  -- search Null v' = False