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
    nome TEXT NOT NULL,
    morada TEXT NOT NULL,
    contacto INTEGER UNIQUE,

    PRIMARY KEY(nome, morada)
);

CREATE TABLE Cliente(
    codigo TEXT  NOT NULL PRIMARY KEY UNIQUE,
    nome TEXT  NOT NULL,
    dataNasc DATE,
    NIF INTEGER UNIQUE,
    morada TEXT  NOT NULL,
    contacto INTEGER,
    profissao TEXT  NOT NULL,
    CHECK (SUBSTR(codigo, 1, 1) == "C")
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
    codigo TEXT  NOT NULL PRIMARY KEY UNIQUE,
    nome TEXT  NOT NULL,
    especialidade TEXT  NOT NULL,
    dataNasc DATE,
    NIF INTEGER UNIQUE,
    morada TEXT  NOT NULL,
    contacto INTEGER,
    salario REAL,
    FOREIGN KEY (especialidade) REFERENCES Especialidade(nome)
    ON DELETE CASCADE ON UPDATE NO ACTION,
    CHECK (SUBSTR(codigo, 1, 1) == "M")
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
    codigo TEXT  NOT NULL PRIMARY KEY UNIQUE,
    nome TEXT  NOT NULL,
    dataNasc DATE,
    NIF INTEGER UNIQUE,
    morada TEXT  NOT NULL,
    contacto INTEGER,
    salario REAL,
    cargo TEXT  NOT NULL,
    CHECK (SUBSTR(codigo, 1, 1) == "O")
);

CREATE TABLE Especialidade(
    nome TEXT NOT NULL PRIMARY KEY UNIQUE
);

CREATE TABLE HorarioAtendimento(
    codigoMed TEXT NOT NULL, 
    dataAtend DATE,
    horaInicio TIME,
    horaFim TIME,

    PRIMARY KEY(codigoMed, dataAtend),

    FOREIGN KEY (codigoMed) REFERENCES Medico(codigo)
    ON DELETE CASCADE ON UPDATE NO ACTION

);

CREATE TABLE Animal(
    codigo TEXT  NOT NULL PRIMARY KEY UNIQUE,
    codigoCli TEXT NOT NULL,
    especie TEXT NOT NULL,
    idade INTEGER,
    nome TEXT NOT NULL,
    FOREIGN KEY (codigoCli) REFERENCES Cliente(codigo)
    ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY (especie) REFERENCES Especie(nome)
    ON DELETE CASCADE ON UPDATE NO ACTION,
    CHECK (SUBSTR(codigo, 1, 1) == "A")
);

CREATE TABLE Especie(
    nome TEXT NOT NULL PRIMARY KEY UNIQUE
);

CREATE TABLE Problema(
    nome TEXT NOT NULL PRIMARY KEY UNIQUE,
    descricao TEXT NOT NULL
);

CREATE TABLE HistoricoProblemas(
    codigoAnimal TEXT NOT NULL,
    nomeProblema TEXT NOT NULL,
    
    PRIMARY KEY(codigoAnimal, nomeProblema),

    FOREIGN KEY (codigoAnimal) REFERENCES Animal(codigo)
    ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY (nomeProblema) REFERENCES Problema(nome)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE PossiveisProblemas(
    nomeEspecie TEXT NOT NULL,
    nomeProblema TEXT NOT NULL, 
    
    PRIMARY KEY(nomeEspecie, nomeProblema),
    
    FOREIGN KEY (nomeEspecie) REFERENCES Especie(nome)
    ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY (nomeProblema) REFERENCES Problema(nome)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE Tratamento(
    nomeTratamento TEXT NOT NULL PRIMARY KEY UNIQUE,
    descricao TEXT NOT NULL,
    duracao REAL,
    CHECK (duracao > 0)
);

CREATE TABLE TratamentosRecomendados(
    nomeProblema TEXT NOT NULL UNIQUE,
    nomeTratamento TEXT NOT NULL,
    PRIMARY KEY(nomeTratamento, nomeProblema),

    FOREIGN KEY (nomeProblema) REFERENCES Tratamento(nome)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (nomeTratamento) REFERENCES Problema(nome)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE Consulta(
    data_consulta DATE,
    codigoAnimal TEXT NOT NULL,
    codigoMed TEXT NOT NULL,
    codigoCli TEXT NOT NULL,
    custo REAL,

    PRIMARY KEY (data_consulta, codigoAnimal),

    FOREIGN KEY (codigoAnimal) REFERENCES Animal(codigo)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (codigoMed) REFERENCES Medico(codigo)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (codigoCli) REFERENCES Cliente(codigo)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE TratamentosConsulta(
    data_consulta DATE,
    codigoAnimal TEXT NOT NULL,
    nomeTratamento TEXT NOT NULL,

    PRIMARY KEY(data_consulta, codigoAnimal, nomeTratamento),
    
    
    FOREIGN KEY (data_consulta) REFERENCES Consulta (data_consulta)
    ON DELETE CASCADE ON UPDATE NO ACTION,
    
    FOREIGN KEY (codigoAnimal) REFERENCES Animal (codigo)
    ON DELETE CASCADE ON UPDATE NO ACTION,

    FOREIGN KEY (nomeTratamento) REFERENCES Tratamento (nomeTratamento)
    ON DELETE CASCADE ON UPDATE NO ACTION 
);

