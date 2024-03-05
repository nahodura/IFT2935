/*
 IFT2935 - BASE DE DONNÉE
 Devoir#2 - ALGÈBRE RELATIONNEL & SQL
 Auteurs : @Nahomy Durand (20201414) & @Mariam Traoré (20114254)
 Remise : 5 mars 2024
 */

START TRANSACTION;

CREATE TABLE Segment (
    indIP INT PRIMARY KEY,
    nomSegment VARCHAR(20) NOT NULL,
    etage INT
);

CREATE TABLE Salle (
    nSalle INT PRIMARY KEY,
    nomSalle VARCHAR(20) NOT NULL,
    nbPoste INT,
    indIP INT
);

CREATE TABLE Poste (
    nPoste INT PRIMARY KEY,
    nomPoste VARCHAR(20) NOT NULL,
    indIP INT,
    ad VARCHAR(255),
    typePoste VARCHAR(4),
    nSalle INT
);

CREATE TABLE Logiciel (
    nLog INT PRIMARY KEY,
    nomLog VARCHAR(20),
    dateAch DATE,
    version VARCHAR(5),
    typeLog VARCHAR(10),
    prix REAL
        check (prix >= 0)
);

CREATE TABLE Installer (
    numIns serial PRIMARY KEY,
    nPoste INT,
    nLog INT,
    dateIns TIMESTAMP DEFAULT(CURRENT_TIMESTAMP),
    delai INT
);

CREATE TABLE Types (
    typeLP VARCHAR(10) PRIMARY KEY,
    nomType VARCHAR(30)
);

COMMIT;
