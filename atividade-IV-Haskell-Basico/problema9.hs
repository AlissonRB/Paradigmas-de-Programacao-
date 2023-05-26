--  Crie uma fun¸c˜ao que dados dois pontos no espa¸co 3D, (x1, y1, z1) e (x2, y2, z2), compute a distˆancia
-- entre eles. Leia as posi¸c˜oes dos pontos do teclado.

distance_3d :: Double -> Double -> Double -> Double -> Double -> Double ->  Double
distance_3d x1 y1 z1 x2 y2 z2 = sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2)

main= do

    putStrLn "Enter the coordinates of the first point:"
    putStrLn "x1: "
    x1_str <- getLine
    let x1 = read x1_str :: Double

    putStrLn "y1:"
    y1_str <- getLine
    let y1 = read y1_str :: Double

    putStr "z1:"
    z1_str <- getLine
    let z1 = read z1_str :: Double

    putStrLn "Enter the coordinates of the second point:"
    putStrLn "x2:"
    x2_str <- getLine
    let x2 = read x2_str :: Double

    putStrLn "y2:"
    y2_str <- getLine
    let y2 = read y2_str :: Double

    putStrLn "z2:"
    z2_str <- getLine
    let z2 = read z2_str :: Double

    let distance = distance_3d x1 y1 z1 x2 y2 z2
    print distance