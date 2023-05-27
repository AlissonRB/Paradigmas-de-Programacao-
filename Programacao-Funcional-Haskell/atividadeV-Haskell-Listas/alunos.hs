alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [t] -> [u] -> [(t,u)] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

aprovados :: [(Int, String, Float)] -> [String]
aprovados alunos = map getNome (filter (\(_, _, media) -> media >= 6) alunos)


-- cria uma lista que contera os nomes dos alunos aprovados
-- (_, nome, media) <- alunos : extrai os elementos da tupla, ignora campos com _
-- media >= 6.0 : condicao
-- nome : valor que sera add na lista resultante
aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 alunos = [nome | (_, nome, media) <- alunos, media >= 6.0]

main = do
    let alunos = [ (1, "Muhammad", 6.3), (2, "Kareem", 5.5), (3, "Chamberlain", 7.2), (4, "Pippen", 4.9)]
    -- print (aprovados2 alunos)
    print gerarPares alunos



-- filter : filtra os alunos qque possuem media maior ou igual a 6.
-- map : aplica a funcao a cada elemento da lista, produzindo
-- uma nova lista com os resultados.
