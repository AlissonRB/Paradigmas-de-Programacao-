-- Crie uma fun¸c˜ao com assinatura mapear :: (t -> y) -> [t] -> [y], a qual recebe uma fun¸c˜ao, uma
-- lista e retorna uma lista. Esta fun¸c˜ao mapear far´a o mesmo que a fun¸c˜ao map, ou seja, aplicar a fun¸c˜ao
-- recebida como parˆametro sobre cada elemento da lista e retornar a lista resultante. N˜ao utilize map ou
-- filter para esta tarefa.

mapear :: (t -> y) -> [t] -> [y]
mapear _ [] = []
mapear f (x:xs) = f x : mapear f xs

dobro :: Int -> Int
dobro x = 3 * x

main= do 
    let lista_original = [1,2,3,4,5]
    print (mapear dobro lista_original)