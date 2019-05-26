.mode columns
.headers on
.nullvalue NULL

SELECT 	count(id)
FROM	Consulta
WHERE	(idMedico = 3) AND (data_consulta = "2018-05-06");