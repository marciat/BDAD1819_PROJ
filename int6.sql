.mode columns
.headers on
.nullvalue NULL

SELECT	c.id, c.nome, c.contacto
FROM	Cliente c INNER JOIN Animal a INNER JOIN Consulta co INNER JOIN Medico m 
ON c.id = a.idCliente AND a.id = co.idAnimal AND co.idMedico = m.id
WHERE	m.salario > 2000