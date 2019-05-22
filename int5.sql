.mode columns
.headers on
.nullvalue NULL

SELECT NIF
FROM Cliente
WHERE idPosto = 1
UNION
SELECT NIF
FROM Medico
WHERE idPosto = 1
UNION
SELECT NIF
FROM Outro
WHERE idPosto = 1;