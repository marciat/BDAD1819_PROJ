PRAGMA foreign_keys=ON;

INSERT INTO Cliente(nome, dataNasc, NIF, morada, contacto, profissao, idPosto) VALUES ('Maria',    '1978-09-05',   555555555,  'Rua da Maria',     912345678,  'Enfermeira',   1); /* not possible */
INSERT INTO Cliente(nome, dataNasc, NIF, morada, contacto, profissao, idPosto) VALUES ('Joaquim',  '1980-10-30',   214568605,  'Rua do Joaquim',   922871837,  'Policia',      2); /* possible */
INSERT INTO Cliente(nome, dataNasc, NIF, morada, contacto, profissao, idPosto) VALUES ('Joao',     '1999-12-17',   123466789,  'Rua do Joao',      965272674,  'Estudante',    1); /* not possible */
INSERT INTO Cliente(nome, dataNasc, NIF, morada, contacto, profissao, idPosto) VALUES ('Pedro',    '1980-04-20',   823456789,  'Rua do Pedro',     912347986,  'Contabilista', 2); /* not possible */
INSERT INTO Cliente(nome, dataNasc, NIF, morada, contacto, profissao, idPosto) VALUES ('Lucas',    '1977-05-04',   234567887,  'Rua do Lucas',     939456789,  'Mecanico',     1); /* possible */

SELECT * FROM Cliente;

INSERT INTO Medico(nome, idEspecialidade, dataNasc, NIF, morada, contacto, salario, idPosto) VALUES ('Maria',     1,  '1978-09-05',   555555555,  'Rua da Maria',     912345678,  3000,   1); /* not possible */
INSERT INTO Medico(nome, idEspecialidade, dataNasc, NIF, morada, contacto, salario, idPosto) VALUES ('Joaquim',   2,  '1980-10-30',   214598605,  'Rua do Joaquim',   922871837,  2000,   2); /* possible */
INSERT INTO Medico(nome, idEspecialidade, dataNasc, NIF, morada, contacto, salario, idPosto) VALUES ('Joao',      3,  '1999-12-17',   123466789,  'Rua do Joao',      965272674,  1500,   1); /* not possible */
INSERT INTO Medico(nome, idEspecialidade, dataNasc, NIF, morada, contacto, salario, idPosto) VALUES ('Pedro',     2,  '1980-04-20',   888888348,  'Rua do Pedro',     912347986,  2300,   2); /* not possible */

SELECT * FROM Medico;

INSERT INTO Outro(nome, dataNasc, NIF, morada, contacto, salario, cargo, idPosto) VALUES ('Maria',      1,  '1978-09-05',   555555555,  'Rua da Maria',     912345678,  3000,   1); /* not possible */
INSERT INTO Outro(nome, dataNasc, NIF, morada, contacto, salario, cargo, idPosto) VALUES ('Joaquim',    2,  '1980-10-30',   214577605,  'Rua do Joaquim',   922871837,  2000,   2); /* possible */
INSERT INTO Outro(nome, dataNasc, NIF, morada, contacto, salario, cargo, idPosto) VALUES ('Joao',       3,  '1999-12-17',   923456789,  'Rua do Joao',      965272674,  1500,   1); /* not possible */
INSERT INTO Outro(nome, dataNasc, NIF, morada, contacto, salario, cargo, idPosto) VALUES ('Pedro',      2,  '1980-04-20',   888888348,  'Rua do Pedro',     912347986,  2300,   2); /* not possible */


SELECT * FROM Outro;