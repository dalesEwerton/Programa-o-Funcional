
-- --Escreva as funcoes sobre a estrutura de dados binary tree
-- data BinaryTree a = NIL | Node a (BinaryTree a) (BinaryTree a)
--  deriving (Eq,Show)

-- sizeBST NIL = 0
-- sizeBST (Node a left right) = 1 + sizeBST left + sizeBST right

-- --verifica se uma BT é uma BST
-- isBST = undefined

-- --insere uma nova chave na BST retornando a BST modificada
-- insert = undefined

-- --retorna o Node da BST contendo o dado procurado ou entao NIL
-- search = undefined

-- --retorna o elmento maximo da BST
-- maximum = undefined

-- --retorna o elemento minimo da BST
-- minimum = undefined

-- --retorna o predecessor de um elemento da BST, caso o elemento esteja na BST
-- predecessor = undefined

-- --retorna o sucessor de um elemento da BST, caso o elemento esteja na BST
-- successor = undefined

-- --remove ume lemento da BST
-- remove = undefined

-- --retorna uma lista com os dados da BST nos diversos tipos de caminhamento
-- preOrder = undefined
-- order = undefined
-- postOrder = undefined

import BStree

main = do
  let tree  = single 5
  let nodes = [6,4,8,2,9]
  let bst   = foldl insert tree nodes
  print bst
  print $ find bst 1
  print $ gind bst 2
  