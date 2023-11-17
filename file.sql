CREATE DATABASE worldcup CHARACTER SET utf8mb4 COLLATE utf8mb_general_ci;

CREATE TABLE equipe (
    id int NOT NULL AUTO_INCREMENT,
    teamname varchar(20),
    teamcontinent varchar(20),
    nplayers int,
    impplayer varchar(30),
    coach varchar(30),
    idgroupe int,
    PRIMARY KEY(id)

);

CREATE TABLE groupe (
    id int NOT NULL AUTO_INCREMENT,
    grpname varchar(4),
    stade varchar(20),
     PRIMARY KEY(id)
);

ALTER TABLE equipe(
    
    FOREIGN KEY (idgroupe) REFERENCES groupe(id)
);


ALTER TABLE equipe
ADD CONSTRAINT fk_equipe_groupe
FOREIGN KEY (idgroupe) REFERENCES groupe(id);


ALTER TABLE `equipe` ADD `flag` VARCHAR(50) NOT NULL AFTER `idgroupe`;



INSERT INTO equipe (id,teamname,teamcontinent,nplayers,impplayer,coach,idgroupe,flag) VALUES(NULL, "Maroc", "Africa", 24, "Hakim Ziyech","Walid Regragui", 1, "images/1.png")



INSERT INTO groupe VALUES(NULL, "A", "Stade Adrar Agadir"),
INSERT INTO groupe VALUES(NULL, "B", "Stade d'honneur Oujda"),
INSERT INTO groupe VALUES(NULL, "C", "Stade Mohammed 5 casablanca"),
INSERT INTO groupe VALUES(NULL, "D", "Grand stade marrakech"),
INSERT INTO groupe VALUES(NULL, "E", "Stade Moulay abdelah Rabat"),
INSERT INTO groupe VALUES(NULL, "F", "Stade Sanya de ramel Tetouane"),
INSERT INTO groupe VALUES(NULL, "G", "Stade Fils de cannard Tanger"),
INSERT INTO groupe VALUES(NULL, "H", "Stade La marche verte les yeux")


ALTER TABLE `equipe` ADD `points` INT NOT NULL AFTER `idgroupe`;
ALTER TABLE `equipe` ADD `butepour` INT NOT NULL AFTER `points`, ADD `butecontre` INT NOT NULL AFTER `butepour`;

INSERT INTO equipe (id, teamname, teamcontinent, nplayers, impplayer, coach, idgroupe, points, butepour, butecontre, flag),
VALUES
(NULL,'Argentina', 'South America', 23, 'Lionel Messi', 'Scaloni', 1, 0, 0, 0, 'images/Argentina.png'),
(NULL,'Morocco', 'Africa', 24, 'Hakim Ziyech', 'Walid Regragui', 1, 0, 0, 0, 'images/Morocco.png'),
(NULL,'Nigeria', 'Africa', 24, 'Alex Iwobi', 'Rohr', 1, 0, 0, 0, 'images/Nigeria.png'),
(NULL,'Croatia', 'Europe', 22, 'Luka Modric', 'Dalic', 1, 0, 0, 0, 'images/Croatia.png'),
(NULL,'Brazil', 'South America', 23, 'Neymar Jr.', 'Tite', 2, 0, 0, 0, 'images/Brazil.png'),
(NULL,'Spain', 'Europe', 22, 'Sergio Ramos', 'Luis Enrique', 2, 0, 0, 0, 'images/Spain.png'),
(NULL,'Switzerland', 'Europe', 24, 'Granit Xhaka', 'Petkovic', 2, 0, 0, 0, 'images/switzerland.png'),
(NULL,'Saudi Arabia', 'Asia', 22, 'Mohammad Al-Sahlawi', 'Pizzi', 2, 0, 0, 0, 'images/KSA.png'),
(NULL,'France', 'Europe', 23, 'Kylian Mbappe', 'Deschamps', 3, 0, 0, 0, 'images/France.png'),
(NULL,'Germany', 'Europe', 22, 'Toni Kroos', 'Low', 3, 0, 0, 0, 'images/Germany.png'),
(NULL,'Turquie', 'Europe', 24, 'Mouhanad', 'aouthman ata turk', 3, 0, 0, 0, 'images/turquie.png'),
(NULL,'Australia', 'Oceania', 22, 'Aaron Mooy', 'Arnold', 3, 0, 0, 0, 'images/Australia.png'),
(NULL,'England', 'Europe', 22, 'Harry Kane', 'Southgate', 4, 0, 0, 0, 'images/England.png'),
(NULL,'Senegal', 'Africa', 23, 'Sadio Mane', 'Cisse', 4, 0, 0, 0, 'images/Senegal.png'),
(NULL,'Mexico', 'North America', 24, 'Javier Hernandez', 'Tata Martino', 4, 0, 0, 0, 'images/Mexico.png'),
(NULL,'Iran', 'Asia', 22, 'Sardar Azmoun', 'Skocic', 4, 0, 0, 0, 'images/Iran.png'),
(NULL,'Uruguay', 'South America', 23, 'Luis Suarez', 'Tabarez', 5, 0, 0, 0, 'images/Uruguay.png'),
(NULL,'Portugal', 'Europe', 22, 'Cristiano Ronaldo', 'Fernando Santos', 5, 0, 0, 0, 'images/Portugal.png'),
(NULL,'Sweden', 'Europe', 24, 'Zlatan Ibrahimovic', 'Janne Andersson', 5, 0, 0, 0, 'images/Sweden.png'),
(NULL,'Japan', 'Asia', 22, 'Takefusa Kubo', 'Hajime Moriyasu', 5, 0, 0, 0, 'images/Japon.png'),
(NULL,'Belgium', 'Europe', 23, 'Eden Hazard', 'Roberto Martinez', 6, 0, 0, 0, 'images/Belgium.png'),
(NULL,'Netherlands', 'Europe', 22, 'Virgil van Dijk', 'Frank de Boer', 6, 0, 0, 0, 'images/Netherlands.png'),
(NULL,'Chile', 'South America', 24, 'Arturo Vidal', 'Martin Lasarte', 6, 0, 0, 0, 'images/Chile.png'),
(NULL,'Qatar', 'Asia', 22, 'Akram Afif', 'Felix Sanchez', 6, 0, 0, 0, 'images/Qatar.png'),
(NULL,'Colombia', 'South America', 23, 'James Rodriguez', 'Reinaldo Rueda', 7, 0, 0, 0, 'images/Colombia.png'),
(NULL,'Poland', 'Europe', 22, 'Robert Lewandowski', 'Paulo Sousa', 7, 0, 0, 0, 'images/Pologne.png'),
(NULL,'Austria', 'Europe', 24, 'David Alaba', 'Franco Foda', 7, 0, 0, 0, 'images/Austria.png'),
(NULL,'USA', 'North America', 22, 'Christian Pulisic', 'Gregg Berhalter', 7, 0, 0, 0, 'images/Usa.png'),
(NULL,'Italy', 'Europe', 23, 'Verrati', 'Jaroslav Silhavy', 8, 0, 0, 0, 'images/Italy.png'),
(NULL,'Denmark', 'Europe', 22, 'Christian Eriksen', 'Kasper Hjulmand', 8, 0, 0, 0, 'images/Denemark.png'),
(NULL,'Wales', 'Europe', 24, 'Gareth Bale', 'Robert Page', 8, 0, 0, 0, 'images/Wales.png'),
(NULL,'South Korea', 'Asia', 22, 'Son Heung-min', 'Paulo Bento', 8, 0, 0, 0, 'images/South-Korea.png');







