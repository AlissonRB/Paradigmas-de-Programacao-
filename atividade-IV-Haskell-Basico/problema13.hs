-- Crie uma fun¸c˜ao que receba dois n´umeros x e y e retorne o m´ınimo m´ultiplo comum (DICA: use a fun¸c˜ao
-- do m´aximo divisor comum j´a criada). Leia x e y do teclado.

-- Crie uma fun¸c˜ao que receba dois n´umeros x e y e retorne o m´aximo divisor comum (DICA: pesquise sobre
-- o Algoritmo de Euclides). Leia x e y do teclado.

mdc :: Int -> Int -> Int
mdc x y = if y == 0
    then x
    else mdc y (x `mod` y)

mmc :: Int -> Int -> Int
mmc x y = (x * y) `div` (mdc x y)

main = do
    putStrLn "Enter the first number:"
    x_str <- getLine
    let x = read x_str :: Int

    putStrLn "Enter the second number: "
    y_str <- getLine
    let y = read y_str :: Int

    let result = mmc x y
    print result