--  Crie uma fun¸c˜ao que receba trˆes parˆametros Operador, x e y, e retorne o resultado da opera¸c˜ao matem´atica
-- x Operador y. Os operadores poss´ıveis de informar s˜ao +, -, *, /. Leia o Operador, x e y do teclado
calculate :: String -> Double -> Double -> Double
calculate "+" x  y = x + y
calculate "-" x  y = x - y
calculate "*" x  y = x * y
calculate "/" x  y
    | y == 0 = error "Division by zero"
    | otherwise = x / y

main = do
    putStrLn "Enter the operator (+, -, *, /):"
    operator <- getLine

    putStrLn "Enter the first number: "
    x_str <- getLine
    let x = read x_str :: Double

    putStrLn "Enter the second number: "
    y_str <- getLine
    let y = read y_str :: Double

    let result = calculate operator x y 
    print result

