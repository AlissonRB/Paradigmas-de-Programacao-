--  Crie uma fun¸c˜ao que resolva uma equa¸c˜ao de segundo grau da forma ax2 + bx + c utilizando a f´ormula
-- de Bhaskara. Leia os coeficientes a, b e c do teclado.

bhaskara  :: Double -> Double -> Double -> (Double, Double)
bhaskara a b c
    | delta < 0 = error "The equation has no real roots"
    | delta == 0 = (root1, root2)
    | otherwise = (root1, root2)
    where
        delta = b^2 - 4*a*c
        root1 = (-b + (sqrt delta) ) / (2*a)
        root2 = (-b - (sqrt delta) ) / (2*a)

main = do 
    putStrLn "Enter the coefficient a: "
    a_str <- getLine
    let a = read a_str :: Double

    putStrLn "Enter the coefficient b: "
    b_str <- getLine
    let b = read b_str :: Double

    putStrLn "Enter the coefficient c:"
    c_str <- getLine
    let c = read c_str :: Double

    let (root1, root2) = bhaskara a b c
    print (root1, root2)