.mode columns
.headers on
.nullvalue NULL

SELECT id, nome 
FROM Problema 
WHERE id IN (   SELECT	idProblema
                FROM	HistoricoProblemas
                WHERE	idAnimal = 1)

