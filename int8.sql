.mode columns
.headers on
.nullvalue NULL
/*
SELECT count(DISTINCT(a2.id)) AS numAnimais, CAST(count(h.idProblema) AS FLOAT)/ CAST(count(DISTINCT(a2.id)) AS FLOAT) AS mediaProblemasIdade
FROM Animal a INNER JOIN HistoricoProblemas h, Animal a2
ON a.id = h.idAnimal
WHERE a.idade = 5 AND a2.idade = 5*/
    
/*SELECT count(DISTINCT(a.id)) AS numAnimais, 
       CAST(count(DISTINCT(h.idProblema)) AS REAL)/CAST(count(DISTINCT(a.id)) AS REAL) AS mediaProblemasIdade
FROM Animal a, HistoricoProblemas h
WHERE (a.idade = 10 AND (h.idAnimal = a.id)) OR (a.idade = 10 AND a.id NOT IN (SELECT idAnimal
                                                             FROM HistoricoProblemas))*/

SELECT count(DISTINCT(a.id)) AS numAnimais,
CAST(count(DISTINCT(h.idProblema)) AS REAL)/count(DISTINCT(a.id)) AS mediaProblemasIdade
FROM Animal a, HistoricoProblemas h
WHERE (h.idAnimal IN (SELECT id FROM Animal WHERE idade = 8)) AND a.idade = 8 



/*
O numAnimais DÁ DIREITO
MAS A PARTE DE CIMA DA MEDIA (o cound do h.idProblema) ESTÁ A DAR BUÉ MERDA
POR CAUSA DA PARTE DO NOT IN, PENSAMOS NÓS.
EM VEZ DE DAR TIPO 2, DÁ 10. UPS
TENTA VER KKKKK
BJOCAS,
JOÃO LEITE
XAU,
O TEU COLEGA
*/