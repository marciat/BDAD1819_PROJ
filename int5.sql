.mode columns
.headers on
.nullvalue NULL

SELECT nome,NIF
FROM Cliente
WHERE idPosto = 1
UNION
SELECT nome,NIF
FROM Medico
WHERE idPosto = 1
UNION
SELECT nome,NIF
FROM Outro
WHERE idPosto = 1;