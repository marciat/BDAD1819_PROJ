PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS Posto;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Medico;
DROP TABLE IF EXISTS Outro;
DROP TABLE IF EXISTS Animal;
DROP TABLE IF EXISTS Especie;
DROP TABLE IF EXISTS Especialidade;
DROP TABLE IF EXISTS HorarioAtendimento;
DROP TABLE IF EXISTS Problema;
DROP TABLE IF EXISTS HistoricoProblemas;
DROP TABLE IF EXISTS PossiveisProblemas;
DROP TABLE IF EXISTS Tratamento;
DROP TABLE IF EXISTS TratamentosRecomendados;
DROP TABLE IF EXISTS Consulta;
DROP TABLE IF EXISTS TratamentosConsulta;

PRAGMA foreign_keys=ON;

CREATE TABLE Posto(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    morada TEXT NOT NULL,
    contacto INTEGER UNIQUE,
    CHECK (length(contacto) <= 9)
);

CREATE TABLE Cliente(
    id INTEGER PRIMARY KEY,
    nome TEXT  NOT NULL,
    dataNasc TEXT,
    NIF INTEGER UNIQUE,
    morada TEXT  NOT NULL,
    contacto INTEGER,
    profissao TEXT  NOT NULL,
    idPosto INTEGER NOT NULL,

    FOREIGN KEY (idPosto) REFERENCES Posto(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    CHECK ((length(contacto) == 9) AND (length(NIF) == 9))
    /*CHECK ( AND (SUBSTR(NIF, 1, 1) == "1" OR SUBSTR(NIF, 1, 1) == "2")
                                                                    AND (((SUBSTR(NIF,1,1) ) +  
                                                                        (SUBSTR(NIF,2,1) ) +  
                                                                        (SUBSTR(NIF,3,1) ) +  
                                                                        (SUBSTR(NIF,4,1) ) +  
                                                                        (SUBSTR(NIF,5,1) ) +  
                                                                        (SUBSTR(NIF,6,1) ) +  
                                                                        (SUBSTR(NIF,7,1) ) +  
                                                                        (SUBSTR(NIF,8,1) ) +  
                                                                        (SUBSTR(NIF,9,1) ) % 11 == 0)
                                                                        OR
                                                                        (CASE   ((SUBSTR(NIF,1,1) ) +  
                                                                                (SUBSTR(NIF,2,1) ) +  
                                                                                (SUBSTR(NIF,3,1) ) +  
                                                                                (SUBSTR(NIF,4,1) ) +  
                                                                                (SUBSTR(NIF,5,1) ) +  
                                                                                (SUBSTR(NIF,6,1) ) +  
                                                                                (SUBSTR(NIF,7,1) ) +  
                                                                                (SUBSTR(NIF,8,1) ) +  
                                                                                (SUBSTR(NIF,9,1) ) % 11)
                                                                        WHEN    1
                                                                        THEN    (CASE    (SUBSTR(NIF,9,1))
                                                                                WHEN    0
                                                                                THEN    (((SUBSTR(NIF,1,1) ) +  
                                                                                        (SUBSTR(NIF,2,1) ) +  
                                                                                        (SUBSTR(NIF,3,1) ) +  
                                                                                        (SUBSTR(NIF,4,1) ) +  
                                                                                        (SUBSTR(NIF,5,1) ) +  
                                                                                        (SUBSTR(NIF,6,1) ) +  
                                                                                        (SUBSTR(NIF,7,1) ) +  
                                                                                        (SUBSTR(NIF,8,1) ) +  
                                                                                        (SUBSTR(NIF,9,1) ) + 10) % 11 == 0)
                                                                                        
                                                                                        )   )   )   )*/
);

CREATE TABLE Medico(
    id INTEGER PRIMARY KEY,
    nome TEXT  NOT NULL,
    dataNasc TEXT,
    NIF INTEGER UNIQUE,
    morada TEXT  NOT NULL,
    contacto INTEGER,
    salario REAL CHECK(salario > 0),
    idEspecialidade INTEGER NOT NULL,
    idPosto INTEGER NOT NULL,

    FOREIGN KEY (idPosto) REFERENCES Posto(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (idEspecialidade) REFERENCES Especialidade(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,
    
    CHECK ((length(contacto) == 9) AND (length(NIF) == 9))
    /*CHECK ((SUBSTR(NIF, 1, 1) == "1" OR SUBSTR(NIF, 1, 1) == "2")
                                                                    AND (((SUBSTR(NIF,1,1) ) +  
                                                                        (SUBSTR(NIF,2,1) ) +  
                                                                        (SUBSTR(NIF,3,1) ) +  
                                                                        (SUBSTR(NIF,4,1) ) +  
                                                                        (SUBSTR(NIF,5,1) ) +  
                                                                        (SUBSTR(NIF,6,1) ) +  
                                                                        (SUBSTR(NIF,7,1) ) +  
                                                                        (SUBSTR(NIF,8,1) ) +  
                                                                        (SUBSTR(NIF,9,1) ) % 11 == 0)
                                                                        OR
                                                                        (CASE   ((SUBSTR(NIF,1,1) ) +  
                                                                                (SUBSTR(NIF,2,1) ) +  
                                                                                (SUBSTR(NIF,3,1) ) +  
                                                                                (SUBSTR(NIF,4,1) ) +  
                                                                                (SUBSTR(NIF,5,1) ) +  
                                                                                (SUBSTR(NIF,6,1) ) +  
                                                                                (SUBSTR(NIF,7,1) ) +  
                                                                                (SUBSTR(NIF,8,1) ) +  
                                                                                (SUBSTR(NIF,9,1) ) % 11)
                                                                        WHEN    1
                                                                        THEN    (CASE    (SUBSTR(NIF,9,1))
                                                                                WHEN    0
                                                                                THEN    (((SUBSTR(NIF,1,1) ) +  
                                                                                        (SUBSTR(NIF,2,1) ) +  
                                                                                        (SUBSTR(NIF,3,1) ) +  
                                                                                        (SUBSTR(NIF,4,1) ) +  
                                                                                        (SUBSTR(NIF,5,1) ) +  
                                                                                        (SUBSTR(NIF,6,1) ) +  
                                                                                        (SUBSTR(NIF,7,1) ) +  
                                                                                        (SUBSTR(NIF,8,1) ) +  
                                                                                        (SUBSTR(NIF,9,1) ) + 10) % 11 == 0)))))*/
);

CREATE TABLE Outro(
    id INTEGER PRIMARY KEY,
    nome TEXT  NOT NULL,
    dataNasc TEXT,
    NIF INTEGER UNIQUE,
    morada TEXT  NOT NULL,
    contacto INTEGER,
    salario REAL CHECK(salario > 0),
    cargo TEXT  NOT NULL,
    idPosto INTEGER NOT NULL,

    FOREIGN KEY (idPosto) REFERENCES Posto(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,
    
    CHECK ((length(contacto) == 9) AND (length(NIF) == 9))
);

CREATE TABLE Especialidade(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE
);

CREATE TABLE HorarioAtendimento(
    id INTEGER PRIMARY KEY,
    idMed INTEGER NOT NULL, 
    dataAtend TEXT,
    horaInicio TEXT,
    horaFim TEXT,

    FOREIGN KEY (idMed) REFERENCES Medico(id)
    ON DELETE CASCADE ON UPDATE NO ACTION

    CHECK (horaInicio < horaFim)
);

CREATE TABLE Animal(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    idade INTEGER,
    idCliente INTEGER NOT NULL,
    idEspecie INTEGER NOT NULL,

    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (idEspecie) REFERENCES Especie(id)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE Especie(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE
);

CREATE TABLE Problema(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE,
    descricao TEXT NOT NULL
);

CREATE TABLE HistoricoProblemas(
    idAnimal INTEGER NOT NULL,
    idProblema INTEGER NOT NULL,

    PRIMARY KEY(idAnimal, idProblema),

    FOREIGN KEY (idAnimal) REFERENCES Animal(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (idProblema) REFERENCES Problema(id)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE PossiveisProblemas(
    idEspecie INTEGER NOT NULL,
    idProblema INTEGER NOT NULL, 
    
    PRIMARY KEY(idEspecie, idProblema),
    
    FOREIGN KEY (idEspecie) REFERENCES Especie(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (idProblema) REFERENCES Problema(id)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE Tratamento(
    id INTEGER PRIMARY KEY,
    nomeTratamento TEXT NOT NULL UNIQUE,
    descricao TEXT NOT NULL,
    duracao REAL  CHECK (duracao > 0)
);

CREATE TABLE TratamentosRecomendados(
    idProblema INTEGER NOT NULL,
    idTratamento INTEGER NOT NULL,
    
    PRIMARY KEY(idProblema, idTratamento),

    FOREIGN KEY (idProblema) REFERENCES Tratamento(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (idTratamento) REFERENCES Problema(id)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE Consulta(
    id INTEGER PRIMARY KEY,
    data_consulta TEXT,
    idAnimal INTEGER NOT NULL,
    idMedico INTEGER NOT NULL,
    idCliente INTEGER NOT NULL,
    custo REAL,

    FOREIGN KEY (idAnimal) REFERENCES Animal(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (idMedico) REFERENCES Medico(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    CHECK (custo >= 0)
);

CREATE TABLE TratamentosConsulta(
    idConsulta INTEGER NOT NULL,
    idTratamento INTEGER NOT NULL,   

    PRIMARY KEY(idConsulta, idTratamento), 
    
    FOREIGN KEY (idConsulta) REFERENCES Consulta (id)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (idTratamento) REFERENCES Tratamento (id)
    ON DELETE CASCADE ON UPDATE NO ACTION 
);

