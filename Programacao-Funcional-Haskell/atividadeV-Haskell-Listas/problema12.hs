-- Crie uma fun¸c˜ao com assinatura apagar :: Int -> [t] -> [t], a qual recebe um n´umero de elementos,
-- uma lista, e retorna uma lista. Esta fun¸c˜ao deve remover da lista os n primeiros elementos fornecidos
-- como parˆametro. Por exemplo, a chamada (apagar 3 [1,2,3,4,5]) deve retornar [4,5]. N˜ao utilize
-- nenhuma fun¸c˜ao pronta to Haskell para esta tarefa.

apagar :: Int -> [t] -> [t]
apagar _ [] = []
apagar 0 lista = lista
apagar n (_:lista) = apagar (n-1) lista


main = do
    print (apagar 3 [1,2,3,4,5,6,7])

