-- Crie uma funcao que receba dois valores booleanos (x, y) retorne o resultado do “ou exclusivo” (XOR)
-- sobre eles. A funcao apenas deve usar os operadores &&, || e not. Leia os valores x e y do teclado.
xor :: Bool -> Bool -> Bool
xor x y = (x || y) && not (x && y)

main = do
    putStrLn "Enter the value of x (True or False):"
    xStr <- getLine
    let x = read xStr :: Bool

    putStrLn "Enter the value of y (True or False):"
    yStr <- getLine
    let y = read yStr :: Bool

    let resultado = xor x y
    putStrLn ("O resultado do XOR entre " ++ show x ++ " e " ++ show y ++ " é: " ++ show resultado)
