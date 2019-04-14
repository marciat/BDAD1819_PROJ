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
    CHECK (length(contacto) == 9)
);

CREATE TABLE Cliente(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    dataNasc TEXT NOT NULL,
    NIF INTEGER UNIQUE,
    morada TEXT NOT NULL,
    contacto INTEGER NOT NULL,
    profissao TEXT NOT NULL,
    idPosto INTEGER NOT NULL,

    FOREIGN KEY (idPosto) REFERENCES Posto(id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    CHECK ((length(contacto) == 9) AND (length(NIF) == 9))
);

CREATE TABLE Medico(
    id INTEGER PRIMARY KEY,
    nome TEXT  NOT NULL,
    dataNasc TEXT NOT NULL,
    NIF INTEGER UNIQUE,
    morada TEXT  NOT NULL,
    contacto INTEGER NOT NULL,
    salario REAL CHECK(salario > 0),
    idEspecialidade INTEGER NOT NULL,
    idPosto INTEGER NOT NULL,

    FOREIGN KEY (idPosto) REFERENCES Posto(id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (idEspecialidade) REFERENCES Especialidade(id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    
    CHECK ((length(contacto) == 9) AND (length(NIF) == 9))
);

CREATE TABLE Outro(
    id INTEGER PRIMARY KEY,
    nome TEXT  NOT NULL,
    dataNasc TEXT NOT NULL,
    NIF INTEGER UNIQUE,
    morada TEXT  NOT NULL,
    contacto INTEGER NOT NULL,
    salario REAL CHECK(salario > 0),
    cargo TEXT  NOT NULL,
    idPosto INTEGER NOT NULL,

    FOREIGN KEY (idPosto) REFERENCES Posto(id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    
    CHECK ((length(contacto) == 9) AND (length(NIF) == 9) AND (cargo <> 'Medico') AND cargo <> 'MEDICO' AND cargo <> 'medico') 
                                        
);

CREATE TABLE Especialidade(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL UNIQUE
);

CREATE TABLE HorarioAtendimento(
    id INTEGER PRIMARY KEY,
    idMed INTEGER NOT NULL, 
    dataAtend TEXT NOT NULL,
    horaInicio TEXT NOT NULL,
    horaFim TEXT NOT NULL,

    FOREIGN KEY (idMed) REFERENCES Medico(id)
    ON DELETE CASCADE ON UPDATE CASCADE

    CHECK (horaInicio < horaFim)
);

CREATE TABLE Animal(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    idade INTEGER NOT NULL,
    idCliente INTEGER NOT NULL,
    idEspecie INTEGER NOT NULL,

    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (idEspecie) REFERENCES Especie(id)
    ON DELETE CASCADE ON UPDATE CASCADE
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
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (idProblema) REFERENCES Problema(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PossiveisProblemas(
    idEspecie INTEGER NOT NULL,
    idProblema INTEGER NOT NULL, 
    
    PRIMARY KEY(idEspecie, idProblema),
    
    FOREIGN KEY (idEspecie) REFERENCES Especie(id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (idProblema) REFERENCES Problema(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Tratamento(
    id INTEGER PRIMARY KEY,
    nomeTratamento TEXT NOT NULL UNIQUE,
    descricao TEXT NOT NULL,
    duracao REAL  CHECK (duracao >= 0)
);

CREATE TABLE TratamentosRecomendados(
    idProblema INTEGER NOT NULL,
    idTratamento INTEGER NOT NULL,
    
    PRIMARY KEY(idProblema, idTratamento),

    FOREIGN KEY (idProblema) REFERENCES Problema(id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (idTratamento) REFERENCES Tratamento(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Consulta(
    id INTEGER PRIMARY KEY,
    data_consulta TEXT NOT NULL,
    horaInicio TEXT NOT NULL,
    idAnimal INTEGER NOT NULL,
    idMedico INTEGER NOT NULL,
    idCliente INTEGER NOT NULL,
    custo REAL DEFAULT 0,

    FOREIGN KEY (idAnimal) REFERENCES Animal(id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (idMedico) REFERENCES Medico(id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    CHECK (custo >= 0)
);

CREATE TABLE TratamentosConsulta(
    idConsulta INTEGER NOT NULL,
    idTratamento INTEGER NOT NULL,   

    PRIMARY KEY(idConsulta, idTratamento), 
    
    FOREIGN KEY (idConsulta) REFERENCES Consulta (id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (idTratamento) REFERENCES Tratamento (id)
    ON DELETE CASCADE ON UPDATE CASCADE 
);

