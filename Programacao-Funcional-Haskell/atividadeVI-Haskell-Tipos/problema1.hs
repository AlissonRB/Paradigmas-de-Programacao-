-- Crie um tipo de dados Aluno, usando type, assim como criamos um tipo de dados Pessoa. O tipo Aluno
-- deve possuir um campo para o nome, outro para a disciplina e outros trˆes campos para notas. Agora,
-- execute os passos abaixo:

type Aluno = (String,String, Double, Double, Double)

aluno :: Int -> Aluno
aluno 1 = ("Muhammad", "Algorithms and Data Structures", 8.5, 7.2, 9.0)
aluno 2 = ("Kareem", "Operating Systems", 6.0, 5.5, 4.5)
aluno 3 = ("Chamberlain", "Computer Networs", 7.0, 7.0, 7.0)
aluno 4 = ("Pippen", "Computer Architecture", 4.0, 5.0, 3.0)
aluno 5 = ("Rodman", "Software Engineering", 10.0, 8.0, 9.0)


--retorna o primeiro nome do aluno
first_name :: Aluno -> String
first_name (name, _, _, _, _) = head (words name)


--retorna a media do aluno correspondente
media_aluno :: Int -> Double
media_aluno matricula = 
    let (_, _,nota1,nota2,nota3) = aluno matricula
        media = (nota1 + nota2 + nota3) / 3.0
    in media


media_turma :: Int -> Double
media_turma total_alunos = soma_medias / fromIntegral total_alunos
    where
        soma_medias = somar_medias total_alunos 0

somar_medias :: Int -> Double -> Double
somar_medias matricula acumulador
    | matricula == 0 = acumulador
    | otherwise = 
        let media_aluno_atual = media_aluno matricula
            novo_acumulador = acumulador + media_aluno_atual
        in somar_medias (matricula - 1) novo_acumulador

main = do
    let total_alunos = 5
    let turma_media = media_turma total_alunos
    print(turma_media)
