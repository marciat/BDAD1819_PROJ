.mode columns
.headers on
.nullvalue NULL

SELECT avg(h.horaFim - h.horaInicio) AS mediaHoras
FROM Medico m, HorarioAtendimento h 
WHERE h.idMed = m.id