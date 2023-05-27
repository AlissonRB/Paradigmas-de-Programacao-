-- Crie uma fun¸c˜ao com assinatura diferencaMaiorMenor :: [Int] -> Int, a qual recebe uma lista de
-- Int e retorna a diferen¸ca entre o maior e o menor elemento da lista. Retorne 0 caso a lista for vazia. N˜ao
-- utilize nenhuma fun¸c˜ao pronta do Haskell para realizar esta tarefa.

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor [x] = 0
diferencaMaiorMenor list = maior list - menor list
    where
        menor :: [Int] -> Int
        menor [] = 0
        menor [x] = x
        menor (x:y:xs) = if x <= y then menor (x:xs) else menor (y:xs)

        maior :: [Int] -> Int
        maior [] = 0
        maior [x] = x
        maior (x:y:xs) = if x >= y then maior (x:xs) else maior (y:xs)


main = do
    let list = [5,8,2,9,6,2,19,33,5]
    let result  =diferencaMaiorMenor list
    print result