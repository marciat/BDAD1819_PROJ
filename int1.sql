.mode columns
.headers on
.nullvalue NULL

SELECT id, nome, salario 
FROM Medico 
WHERE salario > 1500 
UNION 
SELECT id, nome, salario 
FROM Outro 
WHERE salario > 1500;