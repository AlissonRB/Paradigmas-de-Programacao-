-- Crie uma funcao que receba tres notas de um aluno (a, b, c), calcule a media e retorne se o aluno foi
-- aprovado ou reprovado. Para um aluno ser aprovado, ele deve possuir nota igual ou superior a 6. Leia as
-- notas dos alunos do teclado.

check_approval :: Float -> Float -> Float -> String
check_approval a b c 
    | media >= 6 = "Aprovado"
    | otherwise = "Reprovado"
    where media = (a + b + c) / 3

main = do
    putStrLn "Digite a primeira nota: "
    notaA_str <- getLine
    let notaA = read notaA_str :: Float

    putStrLn "Digite a segunda nota: "
    notaB_str <- getLine
    let notaB = read notaB_str :: Float

    putStrLn "Digite a terceira nota: "
    notaC_str <- getLine
    let notaC = read notaC_str :: Float

    let resultado = check_approval notaA notaB notaC
    print resultado