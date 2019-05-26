DROP TRIGGER IF EXISTS HoraConsultas;

CREATE TRIGGER HoraConsultas
BEFORE INSERT ON Consulta
WHEN NEW.horaInicio IN (SELECT horaInicio 
						FROM Consulta 
						WHERE (idMedico = NEW.idMedico AND data_consulta = NEW.data_consulta))
BEGIN
SELECT raise(rollback, 'Hora de consulta coincidente com outra consulta do mesmo medico');
END