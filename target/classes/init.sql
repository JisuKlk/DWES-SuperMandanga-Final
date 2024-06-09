CREATE TABLE juegos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL,
    year INT NOT NULL,
    developer VARCHAR(50),
    genre VARCHAR(50),
    rating FLOAT
);

INSERT INTO juegos (name, price, year, developer, genre, rating) VALUES ('Dead by Daylight', 19, 2016, 'Behaviour Interactive Inc.', 'Survival', 1);
INSERT INTO juegos (name, price, year, developer, genre, rating) VALUES ('South Park: The Stick of Truth', 29, 2014, 'Obsidian Entertainment', 'RPG', 1);
INSERT INTO juegos (name, price, year, developer, genre, rating) VALUES ('Monster Hunter: World', 29, 2018, 'CAPCOM', 'RPG', 1);