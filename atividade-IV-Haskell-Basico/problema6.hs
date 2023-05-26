-- Crie uma fun¸c˜ao que receba trˆes inteiros x, y e z e retorne se havendo varetas com esses valores em
-- comprimento pode-se construir um triˆangulo. Exemplo, com varetas de comprimento 4, 8 e 9 posso
-- construir um triˆangulo, por´em com varetas de comprimento 10, 5 e 4 n˜ao posso construir um triˆangulo.
-- Leia x, y e z do teclado.

can_build_triangle :: Int -> Int -> Int -> Bool
can_build_triangle x y z = (x + y > z) && (x + z > y) && (y + z > x)

main = do
    putStrLn "Enter the value of x: "
    x_str <- getLine
    let x = read x_str :: Int

    putStrLn "Enter the value of y: "
    y_str <- getLine
    let y = read y_str :: Int
    putStr "Enter the value of z: "
    z_str <- getLine
    let z = read z_str :: Int

    let result = can_build_triangle x y z
    print result