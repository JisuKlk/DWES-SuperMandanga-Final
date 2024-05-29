CREATE TABLE juegos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL,
    year INT NOT NULL,
    developer VARCHAR(50),
    genere VARCHAR(50),
    valoracion FLOAT
);

INSERT INTO juegos (name, price, year, developer, genere, valoracion) VALUES ('Factorio', 32, 2020, 'Wube Software LTD', 'Automatización', 1);
INSERT INTO juegos (name, price, year, developer, genere, valoracion) VALUES ('Dont Starve Together', 32, 2020, 'Wube Software LTD', 'Automatización', 1);
INSERT INTO juegos (name, price, year, developer, genere, valoracion) VALUES ('Oxygen Not Included', 32, 2020, 'Wube Software LTD', 'Automatización', 1);
