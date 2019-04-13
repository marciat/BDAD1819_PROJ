INSERT INTO Posto(nome, morada, contacto) 
VALUES 
    ('Posto 1', 'Morada P1', 1),
    ('Posto 2', 'Morada P2', 12),
    ('Posto 3', 'Morada P3', 123);

 INSERT INTO Cliente(nome, dataNasc, NIF, morada, contacto, profissao, idPosto)
 VALUES
    ('Cliente1', '1986-05-01', 1, 'Morada C1', 11, 'Profissao C1', 1),
    ('Cliente2', '1997-05-02', 2, 'Morada C2', 12, 'Profissao C2', 1),
    ('Cliente3', '1976-05-03', 3, 'Morada C3', 13, 'Profissao C3', 1),
    ('Cliente4', '1958-05-04', 4, 'Morada C4', 14, 'Profissao C4', 1),
    ('Cliente5', '1987-05-05', 5, 'Morada C5', 15, 'Profissao C5', 2),
    ('Cliente6', '1979-05-06', 6, 'Morada C6', 16, 'Profissao C6', 2),
    ('Cliente7', '1980-05-07', 7, 'Morada C7', 17, 'Profissao C7', 2),
    ('Cliente8', '1975-05-08', 8, 'Morada C8', 18, 'Profissao C8', 3),
    ('Cliente9', '1994-05-09', 9, 'Morada C9', 19, 'Profissao C9', 3);

INSERT INTO Especialidade(nome)
VALUES
    ('Especialidade1'),
    ('Especialidade2'),
    ('Especialidade3');

 INSERT INTO Medico(nome, idEspecialidade, dataNasc, NIF, morada, contacto, salario, idPosto)
 VALUES
    ('Medico1', 1, '1986-05-01', 1, 'Morada C1', 11, 1000, 1),
    ('Medico2', 3, '1997-05-02', 2, 'Morada C2', 12, 1500, 2),
    ('Medico3', 2, '1976-05-03', 3, 'Morada C3', 13, 2000, 1),
    ('Medico4', 2, '1958-05-04', 4, 'Morada C4', 14, 2100, 2),
    ('Medico5', 1, '1987-05-05', 5, 'Morada C5', 15, 1050, 1),
    ('Medico6', 3, '1979-05-06', 6, 'Morada C6', 16, 1450, 1),
    ('Medico7', 1, '1980-05-07', 7, 'Morada C7', 17, 930, 3),
    ('Medico8', 3, '1975-05-08', 8, 'Morada C8', 18, 1600, 3),
    ('Medico9', 1, '1994-05-09', 9, 'Morada C9', 19, 1100, 2);

 INSERT INTO Outro(nome, dataNasc, NIF, morada, contacto, salario, cargo, idPosto)
 VALUES
    ('Outro1', '1986-05-01', 1, 'Morada C1', 11, 1000, 'Cargo O1', 1),
    ('Outro2', '1997-05-02', 2, 'Morada C2', 12, 1500, 'Cargo O2', 1),
    ('Outro3', '1976-05-03', 3, 'Morada C3', 13, 2000, 'Cargo O3', 1),
    ('Outro4', '1958-05-04', 4, 'Morada C4', 14, 2100, 'Cargo O4', 1),
    ('Outro5', '1987-05-05', 5, 'Morada C5', 15, 1050, 'Cargo O5', 2),
    ('Outro6', '1979-05-06', 6, 'Morada C6', 16, 1450, 'Cargo O6', 2),
    ('Outro7', '1980-05-07', 7, 'Morada C7', 17, 930, 'Cargo O7', 2),
    ('Outro8', '1975-05-08', 8, 'Morada C8', 18, 1600, 'Cargo O8', 3),
    ('Outro9', '1994-05-09', 9, 'Morada C9', 19, 1100, 'Cargo O9', 3);

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
