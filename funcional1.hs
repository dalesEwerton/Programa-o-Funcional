-- Questão 1

xor x y = if (x || y && (not (x && y))) then True else False
impl x y = (not x) || y
equiv x y = (impl x y) && (impl y x)

-- Questão 2

pow 0 y = 1
pow x 0 = 0
pow x y
    |y > 0 = product (take y (cycle [x]))
    |otherwise = 1 / product (take (abs y) (cycle [x]))

-- Questão 3

fatorial x = product [1..x]

-- Questão 4

isPrimeAux x 1 = True
isPrimeAux x y = if (mod x y) == 0 then False else isPrimeAux x (y - 1)
isPrime 1 = True
isPrime x = isPrimeAux x (x-1)

-- Questão 5
fib 0 = 0
fib 1 = 1
fib x = fib (x-1) + fib (x - 2) 

-- Questão 6

mdc x y
    | x < y = mdc y x
    | otherwise = calMdc x y

calMdc x y = if (mod x y) == 0 then y else calMdc y (mod x y)

-- Questão 7
mmc x y = show ((x*y) / (mdc x y))

-- Questão 8
