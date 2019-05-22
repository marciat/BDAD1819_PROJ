.mode columns
.headers on
.nullvalue NULL

SELECT	id, nome, contacto
FROM	Cliente c
WHERE	c.id IN	(SELECT idCliente
				 FROM	Animal a
				 WHERE 	a.id IN (SELECT	idAnimal
								 FROM Consulta co
								 WHERE co.idMedico IN 	(SELECT id
														 FROM Medico m
														 WHERE m.salario > 2000
														) 	
								)
				);