-----------------------------------------------------------
-- CORSO: BASI DI DATI (sede di Latina)
-- PROF. UMBERTO NANNI
-----------------------------------------------------------
-- BASE DI DATI: Uffici
-- Afferenze ( cf_dip, id_uff, giorno_inizio, giorno_fine )
-- Uffici ( id, nome_ufficio, id_sede ) 
-- Dipendenti ( cf, nome ) 
-- Sedi ( id, citta, indirizzo ) 
-----------------------------------------------------------------------
-- ESEMPI SU: CREAZIONE DB E CARICAMENTO DATI
-- CODICE TESTATO SU SQLITE, MARIADB
-- -------------------------------------------------------
-- NB: in SQLITE viene eseguito un solo statement per volta
-- -------------------------------------------------------
-- 
-- (Ri)Creazione DataBase: uffici
-- NB: questa parte riguarda solo MARIADB
-- Su sqlite il db va creato "manualmente"
-- 
-- Eseguire solo queste istruzioni, e poi selezionare col mouse il db
-- uffici

DROP DATABASE IF EXISTS uffici;
CREATE DATABASE Uffici;

-- -------------------------------------------------------
-- -------------------------------------------------------
-- Queste prime istruzioni (DROP, ossia "elimina") servono per poter
-- facilmente rieseguire la creazione di una tabella (o dell'intero
-- database, o di una vista, etc.) dopo aver effettuato qualche
-- modifica del codice.
-- Non hanno alcun effetto in caso le tabelle non esistano.

-- -------------------------------------------------------
-- ATTENZIONE: i vincoli di integrità inseriti nelle "CREATE TABLE"
-- impongono un ordine di creazione specifico (come pure
-- nell'inserimeno dati), e quindi un ordine di "DROP TABLE"
-- inverso...

DROP TABLE IF EXISTS Afferenze;
DROP TABLE IF EXISTS Dipendenti;
DROP TABLE IF EXISTS Uffici;
DROP TABLE IF EXISTS Sedi;

-- -------------------------------------------------------
-- DDL - CREAZIONE TABELLE CON VINCOLI

-- Table: Dipendenti
CREATE TABLE Dipendenti (
    cf   CHAR(16)  PRIMARY KEY,
    nome CHAR(120) NOT NULL
);

-- Table: Sedi
CREATE TABLE Sedi (
    id        INT          PRIMARY KEY,
    citta     VARCHAR(120) NOT NULL,
    indirizzo VARCHAR(255) 
);

-- Table: Uffici
CREATE TABLE Uffici (
    id           INT          PRIMARY KEY,
    nome_ufficio VARCHAR(120) NOT NULL,
    id_sede      INT          NOT NULL REFERENCES Sedi (id) 
);

-- Table: Afferenze
CREATE TABLE Afferenze (
    cf_dip        CHAR(16) NOT NULL REFERENCES Dipendenti (cf),
    id_uff        INT      NOT NULL REFERENCES Uffici (id),
    giorno_inizio DATE     NOT NULL,
    giorno_fine   DATE,
    PRIMARY KEY (cf_dip, giorno_inizio)
--  PRIMARY KEY (cf_dip, id_uff)
);

-- Con questa definizione della chiave primaria (con GIORNO_INIZIO)
-- sono consentiti più periodi di afferenza di un dipendente nel
-- medesimo Ufficio, ma impediti periodi di afferenza di uno stesso
-- dipendente che abbiano inizio nello stesso giorno

-- ----------------------------------------------------------------
-- DML - INSERIMENTO DATI
-- 
-- INSERT INTO <nome tabella> [(<elenco campi specificati>)] VALUES
-- ( <tupla> );
-- 
-- INSERT INTO <nome tabella> [(<elenco campi specificati>)] VALUES
-- ( <tupla 1> ),
-- ( <tupla 1> ),
-- ...
-- ( <tupla 1> );
-- ----------------------------------------------------------------

-- Table: Sedi
INSERT INTO Sedi (id,citta,indirizzo) VALUES
(1,'Genova','Via Garibaldi 23'),
(2,'Perugia','Via Mazzini 5'),
(3,'Caserta','Via San Martino 16');

-- Table: Uffici
INSERT INTO Uffici (id,nome_ufficio,id_sede) VALUES
(1,'Acquisti',1),
(2,'Vendite',1),
(3,'Contabilita',2),
(4,'Magazzino',3),
(5,'Relazioni clienti',3);

-- Table: Dipendenti
INSERT INTO Dipendenti (cf,nome) VALUES
('AN','Antonio Napoli'),
('GB','Giuseppe Bersani'),
('LD','Luca De Falco'),
('MR','Mario Rossi'),
('PC','Paola Campo'),
('SB','Sandro Bianchi'),
('UT','Umberto Temperini');

-- Table: Afferenze
INSERT INTO Afferenze (cf_dip,id_uff,giorno_inizio,giorno_fine) VALUES
('AN',2,'2018-01-01','2019-09-15'),
('AN',3,'2019-09-16','2020-09-15'),
('AN',5,'2020-09-16','2021-01-07'),
('GB',2,'2018-09-01','2019-03-31'),
('GB',4,'2017-03-01','2018-08-31'),
('GB',4,'2019-04-01','2019-12-31'),
('GB',5,'2021-01-01',NULL),
('LD',2,'2018-01-01',NULL),
('LD',4,'2019-04-01','2020-12-31'),
('MR',1,'2016-05-01','2019-12-31'),
('MR',1,'2021-01-01',NULL),
('MR',2,'2018-01-01','2020-12-31'),
('PC',1,'2021-01-01',NULL),
('PC',4,'2018-01-01','2020-12-31'),
('SB',2,'2017-07-01','2019-10-30'),
('SB',3,'2021-01-01',NULL),
('SB',4,'2016-03-01','2017-06-30'),
('SB',4,'2019-11-01','2020-12-31'),
('UT',2,'2018-04-01','2021-01-18'),
('UT',4,'2016-05-15','2018-03-31');

-- -------------------------------------------------------
