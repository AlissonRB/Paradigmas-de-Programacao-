-- Altere nosso exemplo da forma e inclua uma nova forma (Triangulo) no construtor do tipo Forma e tamb´em
-- calcule sua ´area.

data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float

area :: Forma -> Float
area (Circulo r) = pi * r * r 
area (Retangulo b a) = b * a
area (Triangulo b a) = (b * a) / 2

minha_forma :: Forma
minha_forma = (Retangulo 4 6)

main = do
    print ( (area (Triangulo 6 4)))