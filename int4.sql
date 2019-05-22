.mode columns
.headers on
.nullvalue NULL

SELECT id, nome
FROM Cliente
WHERE nome IN	(SELECT nome
				 FROM	Medico
                 UNION
                 SELECT nome 
                 FROM Outro
				);