INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2020-03-01', '20:20:01', 1, 1, 1, 1); /* not possible */
INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2020-03-01', '19:00:00', 1, 1, 1, 1); /* possible */
INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2019-09-01', '20:20:01', 3, 3, 1, 1) /* not possible */
INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2019-03-04', '20:20:01', 3, 1, 4, 20); /* not possible */
INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2020-06-07', '20:20:01', 3, 3, 1, 1); /* possible */

SELECT * FROM Consulta;