.mode columns
.headers on
.nullvalue NULL

SELECT NIF, contacto
FROM Cliente 
WHERE contacto LIKE '12%'
UNION
SELECT NIF, contacto
FROM Medico 
WHERE contacto LIKE '12%'
UNION
SELECT NIF, contacto
FROM Outro 
WHERE contacto LIKE '12%'