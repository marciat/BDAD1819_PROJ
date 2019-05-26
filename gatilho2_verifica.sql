SELECT * FROM Consulta;

INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2019-04-14', '14:20:00', 2, 10, 1, 1); /* not possible */
INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2019-04-03', '11:00:00', 1, 5, 1, 1); /* possible */
INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2018-10-18', '09:30:00', 3, 2, 1, 1); /* not possible */
INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2019-04-14', '11:00:00', 3, 1, 4, 20); /* not possible */
INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo) VALUES ('2018-05-06', '10:20:00', 3, 3, 1, 1); /* possible */

SELECT * FROM Consulta;