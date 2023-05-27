-- Crie uma fun¸c˜ao que receba dois n´umeros x e y e retorne se x ´e divis´ıvel por y. Leia x e y do teclado

divisible :: Int -> Int -> Bool
divisible x y = x `mod` y == 0

main = do
    putStrLn "Enter the firs number: "
    x_str <- getLine
    let x = read x_str :: Int

    putStrLn "Enter the second number: "
    y_str <- getLine
    let y = read y_str :: Int

    let result = divisible x y 
    print result