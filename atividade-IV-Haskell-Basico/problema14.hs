--  Crie uma fun¸c˜ao que receba dois n´umeros x e y e determine se eles s˜ao coprimos. Dois n´umeros s˜ao ditos
-- coprimos se o m´aximo divisor comum entre eles ´e 1. Leia x e y do teclado.

mdc :: Int -> Int -> Int
mdc x y = if y == 0
    then x
    else mdc y (x `mod` y)

sao_coprimos :: Int -> Int -> Bool
sao_coprimos x y = mdc x y == 1

main = do
    putStrLn "Enter the first number: "
    x_str <- getLine
    let x = read x_str :: Int

    putStrLn "Enter the second number: "
    y_str <- getLine
    let y = read y_str :: Int

    let coprimos = sao_coprimos x y
    print coprimos