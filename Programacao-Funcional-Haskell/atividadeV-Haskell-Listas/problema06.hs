-- Crie uma fun¸c˜ao com assinatura ocorrencias :: [Int] -> Int -> Int, a qual recebe uma lista de
-- Int e um Int e retorna o n´umero de vezes em que o elemento est´a presente na lista. N˜ao utilize nenhuma
-- fun¸c˜ao pronta do Haskell para realizar esta tarefa.

ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (x:xs) a = if x == a then 1 + ocorrencias xs a else ocorrencias xs a

main = do
    let list = [1,2,1,2,3,4,1,5,1,4,6]
    let result = ocorrencias list 1
    print result