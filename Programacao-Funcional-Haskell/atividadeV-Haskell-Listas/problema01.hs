-- Crie uma fun¸c˜ao com assinatura soma :: [Int] -> Int, a qual recebe uma lista de Int e retorna a soma
-- de todos os elementos da lista. Retorne 0 caso a lista for vazia. N˜ao utilize nenhuma fun¸c˜ao pronta do
-- Haskell para realizar esta tarefa.

soma :: [Int] -> Int
soma [] = 0     -- se lista vazia, retorna 0
soma (x:xs) = x + soma xs -- soma o primerio com a soma da cauda da lista

main = do
    let list = [1, 2, 3, 4, 5]
    let result = soma list
    print result