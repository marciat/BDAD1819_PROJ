
PRAGMA foreign_keys=ON;

INSERT INTO Posto(nome, morada, contacto) 
VALUES 
    ('Posto 1', 'Morada P1', 1),
    ('Posto 2', 'Morada P2', 12),
    ('Posto 3', 'Morada P3', 123);

 INSERT INTO Cliente(nome, dataNasc, NIF, morada, contacto, profissao, idPosto)
 VALUES
    ('Cliente1', '1986-05-01', 987456321, 'Morada C1', 987456321, 'Profissao C1', 1),
    ('Cliente2', '1997-05-02', 121212121, 'Morada C2', 121212121, 'Profissao C2', 1),
    ('Cliente3', '1976-05-03', 333333333, 'Morada C3', 131313131, 'Profissao C3', 1),
    ('Cliente4', '1958-05-04', 444444444, 'Morada C4', 141414141, 'Profissao C4', 1),
    ('Cliente5', '1987-05-05', 555555555, 'Morada C5', 151515151, 'Profissao C5', 2),
    ('Cliente6', '1979-05-06', 666666666, 'Morada C6', 161616161, 'Profissao C6', 2),
    ('Cliente7', '1980-05-07', 777777777, 'Morada C7', 171717171, 'Profissao C7', 2),
    ('Cliente8', '1975-05-08', 888888888, 'Morada C8', 181818181, 'Profissao C8', 3),
    ('Cliente9', '1994-05-09', 999999999, 'Morada C9', 191919191, 'Profissao C9', 3);

INSERT INTO Especialidade(nome)
VALUES
    ('Especialidade1'),
    ('Especialidade2'),
    ('Especialidade3');

INSERT INTO Medico(nome, idEspecialidade, dataNasc, NIF, morada, contacto, salario, idPosto)
VALUES
    ('Medico1', 1, '1986-05-01', 123456789, 'Morada C1', 112345678, 1000, 1),
    ('Medico2', 3, '1997-05-02', 223456789, 'Morada C2', 122345678, 1500, 2),
    ('Medico3', 2, '1976-05-03', 323456789, 'Morada C3', 132345678, 2000, 1),
    ('Medico4', 2, '1958-05-04', 423456789, 'Morada C4', 142345678, 2100, 2),
    ('Medico5', 1, '1987-05-05', 523456789, 'Morada C5', 152345678, 1050, 1),
    ('Medico6', 3, '1979-05-06', 623456789, 'Morada C6', 162345678, 1450, 1),
    ('Medico7', 1, '1980-05-07', 723456789, 'Morada C7', 172345678, 930, 3),
    ('Medico8', 3, '1975-05-08', 823456789, 'Morada C8', 182345678, 1600, 3),
    ('Medico9', 1, '1994-05-09', 923456789, 'Morada C9', 192345678, 1100, 2);

INSERT INTO Outro(nome, dataNasc, NIF, morada, contacto, salario, cargo, idPosto)
VALUES
    ('Outro1', '1986-05-01', 123466789, 'Morada C1', 123456781, 1000, 'Cargo O1', 1),
    ('Outro2', '1997-05-02', 223446789, 'Morada C2', 122345678, 1500, 'Cargo O2', 1),
    ('Outro3', '1976-05-03', 323236789, 'Morada C3', 123476789, 2000, 'Cargo O3', 1),
    ('Outro4', '1958-05-04', 423456789, 'Morada C4', 123456784, 2100, 'Cargo O4', 1),
    ('Outro5', '1987-05-05', 523426789, 'Morada C5', 152345672, 1050, 'Cargo O5', 2),
    ('Outro6', '1979-05-06', 623326789, 'Morada C6', 162345674, 1450, 'Cargo O6', 2),
    ('Outro7', '1980-05-07', 723432189, 'Morada C7', 172345678, 930, 'Cargo O7', 2),
    ('Outro8', '1975-05-08', 823455489, 'Morada C8', 182345678, 1600, 'Cargo O8', 3),
    ('Outro9', '1994-05-09', 923431289, 'Morada C9', 123456789, 1100, 'Cargo O9', 3);

INSERT INTO Especie(nome)
VALUES 
    ('Especie1'),
    ('Especie2'),
    ('Especie3'),
    ('Especie4'),
    ('Especie5'),
    ('Especie6'),
    ('Especie7'),
    ('Especie8'),
    ('Especie9');

INSERT INTO Animal(nome, idade, idEspecie, idCliente)
VALUES 
    ('Animal1', 3, 1, 1),
    ('Animal2', 4, 1, 3),
    ('Animal3', 5, 1, 2),
    ('Animal4', 3, 1, 5),
    ('Animal5', 10, 1, 4),
    ('Animal6', 6, 1, 7),
    ('Animal7', 1, 1, 6),
    ('Animal8', 7, 1, 9),
    ('Animal9', 2, 1, 8);

INSERT INTO HorarioAtendimento(idMed, dataAtend, horaInicio, horaFim)
VALUES 
    (1, '2018-02-07', '06:05:01', '07:05:01'),
    (2, '2019-05-03', '07:05:01', '10:05:01'),
    (3, '2018-06-01', '08:05:01', '10:05:01'),
    (4, '2019-05-01', '09:05:01', '10:05:01'),
    (5, '2017-07-01', '10:05:01', '11:05:01'),
    (6, '2020-05-02', '11:05:01', '12:05:01'),
    (7, '2019-08-03', '00:05:01', '01:05:01'),
    (8, '2019-05-04', '13:05:01', '23:05:01'),
    (9, '2019-05-05', '03:05:01', '07:05:01');

INSERT INTO Problema(nome, descricao)
VALUES 
    ('Prob1', '9 CSED'),
    ('Prob2', 'DESC 8'),
    ('Prob3', 'DESC 7'),
    ('Prob4', 'DESC 6'),
    ('Prob5', 'DESC 5'),
    ('Prob6', 'DESC 4'),
    ('Prob7', 'DESC 3'),
    ('Prob8', 'DESC 2'),
    ('Prob9', 'DESC 1');

INSERT INTO HistoricoProblemas(idAnimal, idProblema)
VALUES 
    (1, 1),
    (2, 1),
    (3, 6),
    (4, 1),
    (5, 4),
    (6, 1),
    (7, 2),
    (8, 1),
    (9, 3);

INSERT INTO PossiveisProblemas(idEspecie, idProblema)
VALUES 
    (3, 1),
    (4, 1),
    (5, 1),
    (3, 1),
    (1, 4),
    (6, 1),
    (1, 1),
    (7, 1),
    (2, 1);

INSERT INTO Tratamento(nomeTratamento, descricao, duracao) 
VALUES 
    ('Trat 1', 'DESC 1', 1),
    ('Trat 2', 'DESC 2', 12),
    ('Trat 3', 'DESC 3', 123),
    ('Trat 4', 'DESC 4', 1234),
    ('Trat 5', 'DESC 5', 12345),
    ('Trat 6', 'DESC 6', 123456);
    
INSERT INTO TratamentosRecomendados(idProblema, idTratamento)
VALUES 
    (3, 1),
    (4, 1),
    (5, 1),
    (3, 1),
    (1, 4),
    (6, 1),
    (1, 1),
    (7, 1),
    (2, 1);

INSERT INTO Consulta(data_consulta, idAnimal, idMedico, idCliente, custo)
VALUES
    ('20:20:01', 1, 1, 1, 1),
    ('20:20:02', 2, 2, 2, 2),
    ('20:20:03', 3, 3, 3, 3),
    ('20:20:04', 4, 4, 4, 4),
    ('20:20:05', 5, 5, 5, 5),
    ('20:20:06', 6, 6, 6, 6),
    ('20:20:07', 7, 7, 7, 7),
    ('20:20:08', 8, 8, 8, 8),
    ('20:20:09', 9, 9, 9, 9);

INSERT INTO TratamentosConsulta(idConsulta, idTratamento)
VALUES 
    (3, 1),
    (4, 1),
    (5, 1),
    (3, 1),
    (1, 4),
    (6, 1),
    (1, 1),
    (7, 1),
    (2, 1);