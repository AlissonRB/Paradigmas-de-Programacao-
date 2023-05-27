--Crie uma funcao que receba um numero x, negativo ou positivo, e retorne seu valor absoluto. Leia x do teclado.
valorAbsoluto :: Float -> Float
valorAbsoluto x  = abs x

main = do
    putStr "Digite um número: "
    nStr <- getLine
    let n = read nStr :: Float

    
    let resultado = valorAbsoluto n
    putStr ("O valor absoluto de " ++ show n ++ " é: " ++ show resultado)