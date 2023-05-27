-- Crie uma fun¸c˜ao com assinatura menor :: [Int] -> Int, a qual recebe uma lista de Int e retorna o
-- menor elemento da lista. Retorne 0 caso a lista for vazia. N˜ao utilize nenhuma fun¸c˜ao pronta do Haskell
-- para realizar esta tarefa

menor :: [Int] -> Int
menor [] = 0
menor [x] = x
menor (x:y:xs) = if x <= y then menor (x:xs) else menor (y:xs)

main = do
    let list = [9,6,9,3,6,7]
    let result = menor list
    print result

-- (x:y:xs) : pega os dois primeiros elementos da lista
--se o x for menor faz a recursao: menor (x:xs)
-- senao o y é o menor: menor (y:xs)