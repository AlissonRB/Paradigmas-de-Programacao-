--  Crie um novo tipo Ponto, usando data, que pode ser um ponto 2D ou um ponto 3D. Depois, crie uma
-- fun¸c˜ao que receba dois pontos (necessariamente ambos sendo 2D ou ambos sendo 3D), e retorne a distˆancia
-- entre eles.

data Ponto = Ponto2D Float Float | Ponto3D Float Float Float

distancia:: Ponto -> Ponto -> Float
distancia (Ponto2D x1 y1) (Ponto2D x2 y2) = sqrt ((x2 -x1) ** 2 + (y2 - y1) ** 2)
distancia (Ponto3D x1 y1 z1) (Ponto3D x2 y2 z2) = sqrt ((x2 - x1) ** 2 + (y2 - y1) ** 2 + (z2 - z1) ** 2)

main = do
    let ponto_2d1 = Ponto2D 1.0 2.0
        ponto_2d2 = Ponto2D 3.0 4.0
        ponto_3d1 = Ponto3D 1.0 2.0 3.0
        ponto_3d2 = Ponto3D 4.0 5.0 6.0
    
    print (distancia ponto_2d1 ponto_2d2)
    print (distancia ponto_3d1 ponto_3d2)