CREATE TABLE juegos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL,
    year INT NOT NULL,
    developer VARCHAR(50),
    genere VARCHAR(50),
    valoracion FLOAT
);

INSERT INTO juegos (name, price, year, developer, genere, valoracion) VALUES ('Dead by Daylight', 19, 2016, 'Behaviour Interactive Inc.', 'Survival', 1);
INSERT INTO juegos (name, price, year, developer, genere, valoracion) VALUES ('South Park: The Stick of Truth', 29, 2014, 'Obsidian Entertainment', 'RPG', 1);
INSERT INTO juegos (name, price, year, developer, genere, valoracion) VALUES ('Monster Hunter: World', 29, 2018, 'CAPCOM', 'RPG', 1);