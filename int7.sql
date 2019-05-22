.mode columns
.headers on
.nullvalue NULL

SELECT 	count(id)
FROM	Consulta
WHERE	(idMedico = 1) AND (data_consulta = "2020-03-01");