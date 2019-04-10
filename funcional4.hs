

--Exemplos de expressoes lambda
square = \x -> x*x

--Implemente as funções anteriormente escritas usando expressões lambda
--consulte suas implementacoes anteriores para a documentacao dessas funcoes

pow = \ x y -> if (x==0) then 1 
    else if (y==0) then 0 
    else if (y > 0) then product (take y (cycle [x])) 
    else 1 / product (take (abs y) (cycle [x]))

fatorial = \x -> product [1..x]

isPrime = \x -> isPrimeAux x (x-1)
isPrimeAux = \x y -> if (y == 1) then True
    else if (mod x y == 0) then False else isPrimeAux x (y-1)


fib = \x -> if (x==0) then 1
    else if (x==1) then 1
    else fib(x-1) + fib(x-2)

mdc = \x y -> if (y > x) then mdcAux y x else mdcAux x y
mdcAux = \x y -> if (mod x y) == 0 then y else mdcAux y (mod x y)

--mmc = \x y -> (x * y) / (mdc x y)

-- coprimo x y = undefined
-- goldbach x = undefined

-- --Implemente as funções sobre listas escritas previsamente usando expressões lambda
-- --consulte suas implementacoes anteriores para a documentacao dessas funcoes
meuLast = \ (x:xs) -> if (x == []) then error "Lista vazia!"
    else if (length x == 1)
meuLast [] = error "Lista vazia!" 
meuLast [x] = x
meuLast (x:xs) = meuLast xs
-- penultimo xs = undefined
-- elementAt i xs = undefined
-- meuLength xs = undefined
-- meuReverso xs = undefined
-- isPalindrome xs = undefined
-- compress xs = undefined
-- compact xs = undefined
-- encode xs = undefined
-- split xs i = undefined
-- slice xs imin imax = undefined
-- insertAt el pos xs = undefined
-- sort xs = undefined
-- mySum xs = undefined
-- maxList xs = undefined
-- buildPalindrome xs = undefined
-- mean xs = undefined
-- myAppend xs ys = undefined