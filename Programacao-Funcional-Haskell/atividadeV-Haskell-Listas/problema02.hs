-- Crie uma fun¸c˜ao com assinatura media :: [Int] -> Float, a qual recebe uma lista de Int e retorna
-- a m´edia de todos os elementos da lista. Retorne 0 caso a lista for vazia. N˜ao utilize nenhuma fun¸c˜ao
-- pronta do Haskell para realizar esta tarefa. DICA: utilize a fun¸c˜ao fromIntegral para converter um tipo
-- inteiro para um tipo compat´ıvel com o operador de divis˜ao /

media :: [Int] -> Float
media [] = 0    -- caso lista vazia,retorna 0
media list = fromIntegral (soma list) / fromIntegral (length list)
    where
        soma :: [Int] -> Int
        soma [] = 0
        soma (x:xs) = x + soma xs

main = do
    let list = [7,8,9,10,11]
    let result = media list
    print result