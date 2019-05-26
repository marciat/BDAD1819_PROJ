DROP TRIGGER IF EXISTS HoraConsultas;

CREATE TRIGGER HoraConsultas
BEFORE INSERT ON Consulta
WHEN NEW.horaInicio IN 
(SELECT horaInicio FROM Consulta
 WHERE (idMedico = NEW.idMedico AND data_consulta = NEW.data_consulta))
OR
NEW.horaInicio > (SELECT horaFim FROM HorarioAtendimento 
	WHERE idMed = NEW.idMedico AND dataAtend = NEW.data_consulta)
BEGIN
SELECT raise(rollback, 'Hora de Consulta indisponivel');
END