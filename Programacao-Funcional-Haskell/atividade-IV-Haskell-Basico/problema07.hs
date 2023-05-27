-- Crie uma fun¸c˜ao que compute o n-´esimo n´umero de Fibonacci. Leia n do teclado

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

main = do
    putStr "Enter the value of n: "
    n_str <- getLine
    let n = read n_str :: Int

    let result = fibonacci n
    print result