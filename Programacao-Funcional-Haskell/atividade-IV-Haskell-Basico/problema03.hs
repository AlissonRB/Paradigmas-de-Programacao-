--Crie uma funcao que receba a base e a altura de um triangulo e calcule a area do mesmo. Leia a base e a altura do teclado.

calcular_area_triangulo :: Float -> Float -> Float
calcular_area_triangulo base altura = (base* altura) / 2
main = do
    putStr "Digite a base do triangulo: "
    baseStr <-getLine
    let base = read baseStr :: Float

    putStr "Digite a altura do triângulo: "
    alturaStr <- getLine
    let altura = read alturaStr :: Float

    let area  = calcular_area_triangulo base altura
    putStr ("A área do triângulo com base " ++ show base ++ " e  altura " ++ show altura ++ " é: " ++ show area)