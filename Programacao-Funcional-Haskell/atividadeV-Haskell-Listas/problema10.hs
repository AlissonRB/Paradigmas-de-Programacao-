-- Crie uma fun¸c˜ao com assinatura filtrar :: (t -> Bool) -> [t] -> [t], a qual recebe uma fun¸c˜ao,
-- uma lista e retorna uma nova lista. Esta fun¸c˜ao aplica a fun¸c˜ao recebida como parˆametro sobre cada
-- elemento da lista e caso o retorno da fun¸c˜ao for verdadeiro, ent˜ao o elemento far´a parte da nova lista, caso
-- contr´ario n˜ao. Para esta tarefa, utilize o conceito de list comprehension.

filtrar :: (t -> Bool) -> [t] -> [t]
filtrar funcao lista = [ x | x <- lista, funcao x ]

eh_positivo ::  Int -> Bool
eh_positivo x = x > 0


main = do
    let numeros = [-2,3,-5,-6,8,1]
    print ( filtrar eh_positivo numeros)