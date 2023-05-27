-- Crie uma fun¸c˜ao que receba trˆes n´umeros x, y e z e retorne o m´aximo divisor comum (DICA: apenas
-- modifique o algoritmo anterior). Leia x, y e z do teclado.

mdc_3 :: Int -> Int -> Int -> Int
mdc_3 x y z = mdc (mdc x y) z
    where
        mdc a b = if b == 0
            then a
            else mdc b (a `mod` b)

main = do
    putStrLn "Enter the first number:"
    x_str <- getLine
    let x = read x_str :: Int

    putStrLn "Enter the second number: "
    y_str <- getLine
    let y = read y_str :: Int

    putStrLn "Enter the third number: "
    z_str <- getLine
    let z = read z_str :: Int

    let result = mdc_3 x y z
    print result