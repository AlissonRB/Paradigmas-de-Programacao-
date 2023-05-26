-- Crie uma funcao que receba dois numeros x e y e retorne x ^ y
-- Leia x e y do teclado.

potencia :: Float -> Float -> Float
potencia x y = x ** y


main = do
    putStr "Digite o valor de x:"
    xStr <- getLine
    let x = read xStr :: Float

    putStr "Digite o valor de y:"
    yStr <- getLine
    let y = read yStr :: Float
    
    let resultado = potencia x y
    putStr ("O resultado de " ++ show x ++ " elevado a  " ++ show y ++ " 2é:" ++ show resultado)
    putStr("")