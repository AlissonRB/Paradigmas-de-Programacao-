-- Crie uma fun¸c˜ao que receba um n´umero n e retorne se o mesmo ´e primo. Leia n do teclado.

prime_number :: Int -> Bool
prime_number n
    | n < 2    = False --numeros menores que 2 nao sao primos
    |otherwise = check_prime n 2
    where
        check_prime :: Int -> Int -> Bool
        check_prime n i 
            | i > sqrtN       = True
            | n `mod` i == 0  = False
            | otherwise       = check_prime n (i + 1)
            where
                sqrtN = floor (sqrt (fromIntegral n))


main = do
    putStrLn "Enter the number: "
    n_str <- getLine
    let n = read n_str :: Int
    
    let result = prime_number n
    print result

-- floor : arredonda para baixo
-- fromIntegral converte o n em um tipo mais geral como Double ou Float