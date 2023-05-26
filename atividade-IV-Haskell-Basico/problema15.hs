-- Crie uma fun¸c˜ao que receba um n´umero n e retorne a fun¸c˜ao totiente de Euler (φ(n)). A fun¸c˜ao totiente
-- de Euler ´e dada pelo n´umero de inteiros positivos r a partir de 1 e menores que n, ou seja 1 <= r < n,
-- que s˜ao coprimos de n. Por exemplo, se n = 10, ent˜ao os coprimos de 10 de 1 at´e 10-1 s˜ao {1, 3, 7, 9} e
-- a fun¸c˜ao deve retornar φ(n) = 4. Leia n do teclado.

mdc :: Int -> Int -> Int
mdc x y = if y == 0
    then x
    else mdc y (x `mod` y)

totienteEuler :: Int -> Int
totienteEuler n = length [r | r <- [1..n-1], mdc n r == 1]

main = do
    putStrLn "Type a number: "
    n_str <- getLine
    let n = read n_str :: Int

    let result = totienteEuler n
    print result




    