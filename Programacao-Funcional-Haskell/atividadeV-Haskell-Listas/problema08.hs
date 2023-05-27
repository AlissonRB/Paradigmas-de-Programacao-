-- Crie uma fun¸c˜ao com assinatura inverte :: [t] -> [t], a qual recebe uma lista como parˆametro e
-- deve retornar a mesma invertida. N˜ao utilize nenhuma fun¸c˜ao pronta do Haskell para realizar esta tarefa

inverte :: [t] -> [t]
inverte [] = []
inverte (x:xs) = inverte xs ++ [x]

main = do
    let list = [1,2,3,4,5,6,7]
    print (inverte list)