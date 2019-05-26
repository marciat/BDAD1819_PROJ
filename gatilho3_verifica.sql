
PRAGMA foreign_keys=ON;
SELECT * FROM Cliente;

INSERT INTO Cliente VALUES ('Maria',    '1978-09-05',   555555555,  'Rua da Maria',     912345678,  'Enfermeira',   1); /* not possible */
INSERT INTO Cliente VALUES ('Joaquim',  '1980-10-30',   214568605,  'Rua do Joaquim',   922871837,  'Policia',      2); /* possible */
INSERT INTO Cliente VALUES ('Joao',     '1999-12-17',   123466789,  'Rua do Joao',      965272674,  'Estudante',    1); /* not possible */
INSERT INTO Cliente VALUES ('Pedro',    '1980-04-20',   823456789,  'Rua do Pedro',     912347986,  'Contabilista', 2); /* not possible */
INSERT INTO Cliente VALUES ('Lucas',    '1977-05-04',   234567887,  'Rua do Lucas',     939456789,  'Mecanico',     1); /* possible */

SELECT * FROM Cliente;


SELECT * FROM Medico;

INSERT INTO Medico VALUES ('Maria',     1,  '1978-09-05',   555555555,  'Rua da Maria',     912345678,  3000,   1); /* not possible */
INSERT INTO Medico VALUES ('Joaquim',   2,  '1980-10-30',   214598605,  'Rua do Joaquim',   922871837,  2000,   2); /* possible */
INSERT INTO Medico VALUES ('Joao',      3,  '1999-12-17',   123466789,  'Rua do Joao',      965272674,  1500,   1); /* not possible */
INSERT INTO Medico VALUES ('Pedro',     2,  '1980-04-20',   888888348,  'Rua do Pedro',     912347986,  2300,   2); /* not possible */

SELECT * FROM Medico;


SELECT * FROM Outro;

INSERT INTO Outro VALUES ('Maria',      1,  '1978-09-05',   555555555,  'Rua da Maria',     912345678,  3000,   1); /* not possible */
INSERT INTO Outro VALUES ('Joaquim',    2,  '1980-10-30',   214577605,  'Rua do Joaquim',   922871837,  2000,   2); /* possible */
INSERT INTO Outro VALUES ('Joao',       3,  '1999-12-17',   923456789,  'Rua do Joao',      965272674,  1500,   1); /* not possible */
INSERT INTO Outro VALUES ('Pedro',      2,  '1980-04-20',   888888348,  'Rua do Pedro',     912347986,  2300,   2); /* not possible */


SELECT * FROM Outro;