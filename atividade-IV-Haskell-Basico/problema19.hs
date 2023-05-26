-- A conjetura de Goldbach diz que todo n´umero inteiro par maior que 2 pode ser expressado como a soma de
-- dois n´umeros primos. Embora ela nunca foi provada ser verdadeira, ela funciona para n´umeros grandes.
-- Por exemplo, podemos escrever o n´umero 14 como a soma de 7 e 7, ou 18 como a soma de 5 e 13.
-- Implemente uma fun¸c˜ao que receba um n´umero n como parˆametro e retorne um dos n´umeros primos que
-- fazem parte da soma. Ex: retorne 5 ou 13 para o caso do n´umero 18. Leia n do teclado.

--funçao para checar se é num primo
prime_number :: Int -> Bool
prime_number n
    | n < 2    = False -- numeros menores que 2 nao sao primos
    | otherwise = check_prime n 2
    where
        check_prime :: Int -> Int -> Bool
        check_prime n i 
            | i > sqrtN       = True
            | n `mod` i == 0  = False
            | otherwise       = check_prime n (i + 1)
            where
                sqrtN = floor (sqrt (fromIntegral n))

-- funcao para conjectura de goldbach
goldbach :: Int -> Maybe Int
goldbach n 
    | n < 4 || n `mod` 2 /= 0 = Nothing
    | otherwise = find_prime 2
    where
        find_prime :: Int -> Maybe Int
        find_prime x
            | x >= n = Nothing
            | prime_number x && prime_number (n-x) = Just x
            | otherwise = find_prime (x + 1)

main = do
    putStrLn "Enter an even number greater than 2: "
    n_str <- getLine
    let n = read n_str :: Int 

    let result = goldbach n
    print result