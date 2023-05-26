-- Crie uma fun¸c˜ao que receba 3 valores num´ericos (a, b, c) e retorne o maior deles. N˜ao utilize nenhuma
-- forma de ordena¸c˜ao. Leia os valores a, b, c do teclado.


maxi ::Float -> Float -> Float -> Float
maxi a b c
    | a >= b && a >= c = a
    | b >= a && b >= c = b
    | otherwise = c

main = do
    putStrLn "Enter the value of a: "
    a_str <- getLine
    let a = read a_str :: Float

    putStrLn "Enter the value of b: "
    b_str <- getLine
    let b = read b_str :: Float

    putStrLn "Enter the value of c: "
    c_str <- getLine
    let c = read c_str :: Float

    let higher = maxi a b c
    print higher