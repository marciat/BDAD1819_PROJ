.mode columns
.headers on
.nullvalue NULL

SELECT idProblema as pID FROM HistoricoProblemas
GROUP BY idProblema
ORDER BY (SELECT count(idProblema) FROM HistoricoProblemas
WHERE idProblema == pID) DESC;