.mode columns
.headers on
.nullvalue NULL

SELECT DISTINCT m.id, m.nome 
FROM Medico m INNER JOIN Consulta c INNER JOIN TratamentosConsulta h INNER JOIN Tratamento t
ON m.id = c.idMedico AND c.id = h.idConsulta AND h.idTratamento = t.id
WHERE t.duracao > 10