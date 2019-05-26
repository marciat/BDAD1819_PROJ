.mode columns
.headers on
.nullvalue NULL

SELECT count(DISTINCT(a.id)) AS numAnimais,
CAST(count(DISTINCT(h.idProblema)) AS REAL)/count(DISTINCT(a.id)) AS mediaProblemasIdade
FROM Animal a, HistoricoProblemas h
WHERE (h.idAnimal IN (SELECT id FROM Animal WHERE idade = 8)) AND a.idade = 8 
