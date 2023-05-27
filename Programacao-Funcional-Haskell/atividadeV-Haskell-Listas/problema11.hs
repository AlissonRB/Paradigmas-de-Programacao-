-- Crie uma fun¸c˜ao com assinatura primeiros :: Int -> [t] -> [t], a qual recebe um n´umero de elementos, uma lista, e retorna uma lista. Esta fun¸c˜ao deve retornar uma lista com os n primeiros elementos
-- informados no primeiro parˆametro. N˜ao utilize nenhuma fun¸c˜ao pronta to Haskell para esta tarefa.

primeiros :: Int -> [t] -> [t]
primeiros numero lista = take numero lista

n_primeiros :: Int -> [t] -> [t]
n_primeiros _ [] = []
n_primeiros 0 _ = []
n_primeiros n (x:lista) = x : take (n - 1) lista

main  = do 
    let lista = [1,2,3,4,5,6,7,8]
    let n = 4
    print (primeiros n lista)