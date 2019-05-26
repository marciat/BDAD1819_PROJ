.mode columns
.headers on
.nullvalue NULL

SELECT count(DISTINCT(a.id)) AS numAnimais,count(DISTINCT(h.idProblema)) AS problemasDistintos
FROM Animal a, HistoricoProblemas h
WHERE (h.idAnimal IN (SELECT id FROM Animal WHERE idade = 3)) AND a.idade = 3
