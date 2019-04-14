
PRAGMA foreign_keys=ON;
.headers ON
.mode columns

INSERT INTO Posto(nome, morada, contacto) 
VALUES 
    ('Posto 1', 'Morada P1', 123456789),
    ('Posto 2', 'Morada P2', 124567895),
    ('Posto 3', 'Morada P3', 123741852);

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
    ('Cliente9', '1994-05-09', 999999999, 'Morada C9', 191919191, 'Profissao C9', 3),
    ('Cliente10', '1986-06-01', 987456331, 'Morada C1', 987456321, 'Profissao C1', 1),
    ('Cliente20', '1997-06-02', 121212111, 'Morada C1', 121212121, 'Profissao C2', 1),
    ('Cliente30', '1976-06-03', 333333353, 'Morada C10', 132313131, 'Profissao C3', 1),
    ('Cliente40', '1958-06-04', 444444474, 'Morada C80', 142414141, 'Profissao C4', 1),
    ('Cliente50', '1987-06-05', 555555595, 'Morada C50', 152515151, 'Profissao C5', 2),
    ('Cliente60', '1979-06-06', 666666656, 'Morada C60', 162616161, 'Profissao C6', 2),
    ('Cliente70', '1980-06-07', 777777717, 'Morada C70', 172717171, 'Profissao C7', 2),
    ('Cliente80', '1975-06-08', 888888348, 'Morada C80', 182818181, 'Profissao C8', 3),
    ('Cliente90', '1994-06-09', 999999459, 'Morada C90', 192919191, 'Profissao C9', 3);

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
    ('Medico9', 1, '1994-05-09', 923456789, 'Morada C9', 192345678, 1100, 2),
    ('Medico10', 1, '1986-06-01', 125456789, 'Morada C1', 112375678, 1000, 1),
    ('Medico20', 3, '1997-06-02', 227456789, 'Morada C2', 122355678, 1500, 2),
    ('Medico30', 2, '1976-06-03', 329456789, 'Morada C3', 132355678, 2000, 1),
    ('Medico40', 2, '1958-06-04', 413456789, 'Morada C4', 142355678, 2100, 2),
    ('Medico50', 1, '1987-06-05', 523455789, 'Morada C5', 152355678, 1050, 1),
    ('Medico60', 3, '1979-06-06', 623453789, 'Morada C6', 162355678, 1450, 1),
    ('Medico70', 1, '1980-06-07', 723451789, 'Morada C7', 172355678, 930, 3),
    ('Medico80', 3, '1975-06-08', 823452789, 'Morada C8', 182355678, 1600, 3),
    ('Medico90', 1, '1994-06-09', 923457789, 'Morada C9', 192345678, 1100, 2);

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
    ('Outro9', '1994-05-09', 923431289, 'Morada C9', 123456789, 1100, 'Cargo O9', 3),
    ('Outro10', '1986-06-01', 123466489, 'Morada C1', 123453781, 1000, 'Cargo O1', 1),
    ('Outro20', '1997-06-02', 223446189, 'Morada C2', 122343678, 1500, 'Cargo O2', 1),
    ('Outro30', '1976-06-03', 323236289, 'Morada C3', 123473789, 2000, 'Cargo O3', 1),
    ('Outro40', '1958-06-04', 423456289, 'Morada C4', 123453784, 2100, 'Cargo O4', 1),
    ('Outro50', '1987-06-05', 523426289, 'Morada C5', 152343672, 1050, 'Cargo O5', 2),
    ('Outro60', '1979-06-06', 623326289, 'Morada C6', 162343674, 1450, 'Cargo O6', 2),
    ('Outro70', '1980-06-07', 723432289, 'Morada C7', 172343678, 930, 'Cargo O7', 2),
    ('Outro80', '1975-06-08', 823455289, 'Morada C8', 182343678, 1600, 'Cargo O8', 3),
    ('Outro90', '1994-06-09', 923431189, 'Morada C9', 123453789, 1100, 'Cargo O9', 3);

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
    ('Animal9', 2, 1, 8),
    ('Animal11', 3, 1, 2),
    ('Animal21', 4, 3, 3),
    ('Animal31', 5, 1, 2),
    ('Animal41', 3, 2, 5),
    ('Animal51', 10, 8, 4),
    ('Animal61', 6, 5, 7),
    ('Animal71', 3, 1, 6),
    ('Animal81', 10, 1, 9),
    ('Animal91', 8, 1, 8);

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
    (9, '2019-05-05', '03:05:01', '07:05:01'),
    (10, '2018-02-07', '06:05:01', '07:05:01'),
    (11, '2019-06-03', '07:05:01', '10:05:01'),
    (12, '2018-06-01', '08:05:01', '10:05:01'),
    (13, '2019-06-01', '09:05:01', '10:05:01'),
    (14, '2017-06-01', '10:05:01', '11:05:01'),
    (15, '2020-06-02', '11:05:01', '12:05:01'),
    (16, '2019-06-03', '00:05:01', '01:05:01'),
    (17, '2019-06-04', '13:05:01', '23:05:01'),
    (18, '2019-06-05', '03:05:01', '07:05:01');

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
    ('Prob9', 'DESC 1'),
    ('Prob10', '9 CSED0'),
    ('Prob20', 'DESC 80'),
    ('Prob30', 'DESC 70'),
    ('Prob40', 'DESC 60'),
    ('Prob50', 'DESC 50'),
    ('Prob06', 'DESC 40'),
    ('Prob70', 'DESC 30'),
    ('Prob80', 'DESC 20'),
    ('Prob90', 'DESC 10');

INSERT INTO HistoricoProblemas(idAnimal, idProblema)
VALUES 
    (1, 17),
    (2, 18),
    (3, 6),
    (4, 1),
    (5, 4),
    (6, 1),
    (7, 2),
    (8, 11),
    (9, 3),
    (11, 12),
    (12, 1),
    (13, 6),
    (14, 1),
    (15, 4),
    (16, 9),
    (17, 2),
    (18, 1),
    (10, 3);

INSERT INTO PossiveisProblemas(idEspecie, idProblema)
VALUES 
    (1, 1),
    (1, 4),
    (3, 1),
    (1, 14),
    (4, 1),
    (5, 1),
    (3, 2),
    (6, 1),
    (7, 1),
    (2, 10),
    (3, 11),
    (4, 12),
    (5, 13),
    (3, 10),
    (6, 11),
    (1, 13),
    (7, 17),
    (2, 18);

INSERT INTO Tratamento(nomeTratamento, descricao, duracao) 
VALUES 
    ('Trat 1', 'DESC 1', 1),
    ('Trat 2', 'DESC 2', 12),
    ('Trat 3', 'DESC 3', 123),
    ('Trat 4', 'DESC 4', 1234),
    ('Trat 5', 'DESC 5', 12345),
    ('Trat 6', 'DESC 6', 123456),
    ('Trat 7', 'DESC 7', 1234),
    ('Trat 8', 'DESC 8', 12345),
    ('Trat 9', 'DESC 9', 123456),
    ('Trat 10', 'DESC 10', 1),
    ('Trat 20', 'DESC 20', 12),
    ('Trat 30', 'DESC 30', 123),
    ('Trat 40', 'DESC 40', 1234),
    ('Trat 50', 'DESC 50', 12345),
    ('Trat 60', 'DESC 60', 123456),
    ('Trat 70', 'DESC 70', 1234),
    ('Trat 80', 'DESC 80', 12345),
    ('Trat 90', 'DESC 90', 123456);
    
INSERT INTO TratamentosRecomendados(idProblema, idTratamento)
VALUES 
    (1, 1),
    (2, 3),
    (3, 2),
    (4, 5),
    (5, 4),
    (6, 4),
    (5, 5),
    (7, 2),
    (1, 3),
    (1, 12),
    (2, 13),
    (3, 12),
    (4, 15),
    (5, 14),
    (6, 14),
    (5, 15),
    (7, 12),
    (1, 13);

INSERT INTO Consulta(data_consulta, horaInicio, idAnimal, idMedico, idCliente, custo)
VALUES
    ('2019-03-01','20:20:01', 1, 2, 11, 1),
    ('2020-03-01','20:20:01', 16, 1, 12, 2),
    ('2020-03-02','20:20:01', 8, 1, 1, 3),
    ('2020-03-03','20:20:01', 1, 4, 1, 4),
    ('2019-03-04','20:20:01', 3, 1, 11, 5),
    ('2019-03-06','20:20:01', 11, 13, 16, 6),
    ('2019-03-05','20:20:01', 7, 6, 5, 7),
    ('2019-04-02','20:20:01', 3, 4, 15, 8),
    ('2019-12-08','20:20:01', 15, 8, 16, 9),
    ('2019-11-01','20:20:01', 10, 2, 14, 10),
    ('2019-03-11','20:20:01', 11, 1, 18, 11),
    ('2119-03-01','20:20:01', 5, 18, 10, 12),
    ('3019-03-01','20:20:01', 6, 17, 11, 13),
    ('2019-06-01','20:20:01', 9, 16, 13, 14),
    ('2019-05-01','20:20:01', 16, 5, 5, 15),
    ('2019-08-01','20:20:01', 17, 4, 6, 16),
    ('2019-09-01','20:20:01', 15, 3, 2, 17),
    ('2019-10-01','20:20:01', 10, 2, 13, 18);

INSERT INTO TratamentosConsulta(idConsulta, idTratamento)
VALUES 
    (1, 1),
    (1, 2),
    (1, 4),
    (1, 5),
    (2, 1),
    (2, 2),
    (3, 1),
    (3, 2),
    (3, 7),
    (4, 1),
    (5, 1),
    (6, 1),
    (7, 1),
    (4, 2),
    (5, 2),
    (3, 3),
    (7, 2),
    (6, 2);