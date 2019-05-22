.mode columns
.headers on
.nullvalue NULL

SELECT id, nome
FROM Animal
WHERE id IN 	(SELECT idAnimal
		 		 FROM	Consulta
		 		 WHERE	(idMedico = 1) AND (data_consulta > "2019-03-01") AND (data_consulta < "2020-11-01")
		);