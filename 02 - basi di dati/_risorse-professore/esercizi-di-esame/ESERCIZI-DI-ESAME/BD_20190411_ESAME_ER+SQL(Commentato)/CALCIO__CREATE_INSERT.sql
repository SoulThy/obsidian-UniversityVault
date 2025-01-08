-- ------------------------------------------------------------------
-- ------------------------------------------------------------------

DROP TABLE IF EXISTS Partite;
DROP TABLE IF EXISTS Giocatori;
DROP TABLE IF EXISTS Squadre;

-- Table: Squadre
create table Squadre (
       id    INT AUTO_INCREMENT PRIMARY KEY,
       nome  VARCHAR(63),
       sede	 VARCHAR(63)
);

-- Table: Giocatori
create table Giocatori (
       id       INT AUTO_INCREMENT PRIMARY KEY,
       cf       VARCHAR(16) UNIQUE,
       nome     VARCHAR(63),
       cognome  VARCHAR(63),
       id_sq    INT REFERENCES Squadre(id)
);

-- Table: Partite
create table Partite (
       id          INT AUTO_INCREMENT PRIMARY KEY,
       data        DATE,
       arbitro     VARCHAR(63),
       id_sq_casa  INT REFERENCES Squadre(id),
       gol_casa    INT,
       id_sq_fuori INT REFERENCES Squadre(id),
       gol_fuori   INT
);

-- ------------------------------------------------------------------

DELETE FROM Partite;
DELETE FROM Giocatori;
DELETE FROM Squadre;

-- Table: Squadre
INSERT INTO Squadre (id,nome,sede) VALUES
(1, 'Inter',    'Milano'),
(2, 'Roma',     'Roma'),
(3, 'Milan',    'Milano'),
(4, 'Napoli',   'Napoli'),
(5, 'Juventus', 'Torino'),
(6, 'Lazio',    'Roma'),
(7, 'Samp',     'Genova'),
(8, 'Spal',     'Ferrara');

-- Table: Giocatori
INSERT INTO Giocatori (id,cf,nome,cognome,id_sq) VALUES
(1, 'PR4', 'Paolo',   'Rossi',   '1'),
(2, 'AB2', 'Antonio', 'Bianchi', '2'),
(3, 'FV1', 'Filippo', 'Verdi',   '2'),
(4, 'AS4', 'Andrea',  'Strisce', '3'),
(5, 'LR1', 'Luca',    'Rigoni',  '4'),
(6, 'NA3', 'Nestore', 'Arancio', '4'),
(7, 'LR2', 'Lorenzo', 'Ricci',   '5'),
(8, 'LM4', 'Lucio',   'Miele',   '5'),
(9, 'AP1', 'Antonio', 'Pierucci','6');

-- Table: Partite
INSERT INTO Partite (id,data,arbitro,id_sq_casa,gol_casa,id_sq_fuori,gol_fuori) VALUES
(1,  '2019-01-23', 'Nonci Vedo',      '1','2','2','3'),
(2,  '2019-01-23', 'Vedo Poco',       '3','1','4','0'),
(3,  '2019-01-23', 'Guardo Altrove',  '6','3','5','0'),
(4,  '2019-01-31', 'Vedo Poco',       '2','1','3','3'),
(5,  '2019-01-31', 'Guardo Altrove',  '5','2','4','0'),
(6,  '2019-01-31', 'Nonci Vedo',      '1','3','6','2'),
(7,  '2019-02-05', 'Guardo Altrove',  '2','0','4','0'),
(8,  '2019-02-05', 'Nonci Vedo',      '5','0','1','0'),
(9,  '2019-02-05', 'Vedo Poco',       '3','0','6','1'),
(10, '2019-02-12', 'Vedo Poco',       '4','2','1','2'),
(11, '2019-02-12', 'Nonci Vedo',      '5','2','3','3'),
(12, '2019-02-12', 'Guardo Altrove',  '6','2','2','3'),
(13, '2019-08-15', 'Vedo Poco',       '7','1','2','1'),
(14, '2019-08-15', 'Nonci Vedo',      '1','1','8','0');

-- ------------------------------------------------------------------
