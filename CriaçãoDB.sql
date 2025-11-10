CREATE DATABASE ESCOLA_TECNICA;
USE ESCOLA_TECNICA;
CREATE TABLE Voluntario (
    IdVoluntario INT AUTO_INCREMENT PRIMARY KEY,
    CPF CHAR(14) UNIQUE NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Data_Nasc DATE,
    CEP VARCHAR(9),
    Numero INT,
    Telefone VARCHAR(15),
    Complemento VARCHAR(100),
    Turno ENUM('manhã', 'tarde', 'noite'),
    Serie VARCHAR(20)
);
USE ESCOLA_TECNICA;
CREATE TABLE Planta (
    IdPlanta INT AUTO_INCREMENT PRIMARY KEY,
    NomeCientifico VARCHAR(50) UNIQUE NOT NULL,
    NomeComum VARCHAR(50),
    Tipo VARCHAR(30)
);
USE ESCOLA_TECNICA;
CREATE TABLE Canteiro (
    IdCanteiro INT AUTO_INCREMENT PRIMARY KEY,
    Localizacao VARCHAR(100),
    Largura DECIMAL(5,2),
    Comprimento DECIMAL(4,2),
    Altura DECIMAL(4,2)
);
USE ESCOLA_TECNICA;
CREATE TABLE Cultivo (
    IdCultivo INT AUTO_INCREMENT PRIMARY KEY,
    IdVoluntario INT,
    IdCanteiro INT,
    IdPlanta INT,
    DataCultivo DATE,
    FOREIGN KEY (IdVoluntario) REFERENCES Voluntario(IdVoluntario),
    FOREIGN KEY (IdCanteiro) REFERENCES Canteiro(IdCanteiro),
    FOREIGN KEY (IdPlanta) REFERENCES Planta(IdPlanta)
);
USE ESCOLA_TECNICA;
CREATE TABLE Colheita (
    IdColheita INT AUTO_INCREMENT PRIMARY KEY,
    IdCanteiro INT,
    IdPlanta INT,
    Data DATE,
    Quantidade VARCHAR(50),
    FOREIGN KEY (IdCanteiro) REFERENCES Canteiro(IdCanteiro),
    FOREIGN KEY (IdPlanta) REFERENCES Planta(IdPlanta)
);
USE ESCOLA_TECNICA;
CREATE TABLE Instituicao (
    IdInstituicao INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    CEP VARCHAR(9),
    Numero INT,
    Telefone VARCHAR(15),
    Complemento VARCHAR(100)
);
USE ESCOLA_TECNICA;
CREATE TABLE Doacao (
    IdDoacao INT AUTO_INCREMENT PRIMARY KEY,
    IdColheita INT,
    IdInstituicao INT,
    DataDoacao DATE,
    QuantidadeDoada VARCHAR(50),
    FOREIGN KEY (IdColheita) REFERENCES Colheita(IdColheita),
    FOREIGN KEY (IdInstituicao) REFERENCES Instituicao(IdInstituicao)
);

