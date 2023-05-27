-- Crie uma fun¸c˜ao com assinatura busca :: [Int] -> Int -> Bool, a qual recebe uma lista de Int e um
-- Int e retorna se o elemento passado como parˆametro encontra-se na lista ou n˜ao. N˜ao utilize nenhuma
-- fun¸c˜ao pronta do Haskell para realizar esta tarefa.

busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (x:xs) a = if x == a then True else busca xs a

main = do
    let list = [1,2,3,4,5,6,7]
    let result = busca list 9
    print result


