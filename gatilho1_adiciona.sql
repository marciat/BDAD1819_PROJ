DROP TRIGGER IF EXISTS ProblemasAnimais;

CREATE TRIGGER ProblemasAnimais
BEFORE INSERT ON HistoricoProblemas
WHEN NEW.idProblema NOT IN 
(SELECT idProblema FROM PossiveisProblemas 
	WHERE idEspecie = (SELECT idEspecie FROM Animal WHERE idAnimal = NEW.idAnimal))
SELECT raise(rollback, 'Problema nao aplicavel a especie do animal');