DROP DATABASE IF EXISTS it_products;
CREATE DATABASE it_products;
USE it_products;

CREATE TABLE PC
(
    model varchar(4),
    speed double,
    ram   int,
    hd    int,
    price int,
    PRIMARY KEY (model)
);
INSERT INTO pc
VALUES ('1001', '2.66', '1024', '250', '2114');
INSERT INTO pc
VALUES ('1002', '2.1', '512', '250', '995');
INSERT INTO pc
VALUES ('1003', '1.42', '512', '80', '478');
INSERT INTO pc
VALUES ('1004', '2.8', '1024', '250', '649');
INSERT INTO pc
VALUES ('1005', '3.2', '512', '250', '630');
INSERT INTO pc
VALUES ('1006', '3.2', '1024', '320', '1049');
INSERT INTO pc
VALUES ('1007', '2.2', '1024', '200', '510');
INSERT INTO pc
VALUES ('1008', '2.2', '2048', '250', '770');
INSERT INTO pc
VALUES ('1009', '2.00', '1024', '250', '650');
INSERT INTO pc
VALUES ('1010', '2.8', '2048', '300', '770');
INSERT INTO pc
VALUES ('1011', '1.86', '2048', '160', '959');
INSERT INTO pc
VALUES ('1012', '2.8', '1024', '160', '649');
INSERT INTO pc
VALUES ('1013', '3.06', '512', '80', '529');

CREATE TABLE Product
(
    maker varchar(1),
    model varchar(4),
    type  varchar(7),
    PRIMARY KEY (model)
);
INSERT INTO product
VALUES ('A', '1001', 'pc');
INSERT INTO product
VALUES ('A', '1002', 'pc');
INSERT INTO product
VALUES ('A', '1003', 'pc');
INSERT INTO product
VALUES ('B', '1004', 'pc');
INSERT INTO product
VALUES ('B', '1005', 'pc');
INSERT INTO product
VALUES ('B', '1006', 'pc');
INSERT INTO product
VALUES ('C', '1007', 'pc');
INSERT INTO product
VALUES ('D', '1008', 'pc');
INSERT INTO product
VALUES ('D', '1009', 'pc');
INSERT INTO product
VALUES ('D', '1010', 'pc');
INSERT INTO product
VALUES ('E', '1011', 'pc');
INSERT INTO product
VALUES ('E', '1012', 'pc');
INSERT INTO product
VALUES ('E', '1013', 'pc');
INSERT INTO product
VALUES ('E', '2001', 'laptop');
INSERT INTO product
VALUES ('E', '2002', 'laptop');
INSERT INTO product
VALUES ('E', '2003', 'laptop');
INSERT INTO product
VALUES ('A', '2004', 'laptop');
INSERT INTO product
VALUES ('A', '2005', 'laptop');
INSERT INTO product
VALUES ('A', '2006', 'laptop');
INSERT INTO product
VALUES ('B', '2007', 'laptop');
INSERT INTO product
VALUES ('F', '2008', 'laptop');
INSERT INTO product
VALUES ('F', '2009', 'laptop');
INSERT INTO product
VALUES ('G', '2010', 'laptop');
INSERT INTO product
VALUES ('E', '3001', 'printer');
INSERT INTO product
VALUES ('E', '3002', 'printer');
INSERT INTO product
VALUES ('E', '3003', 'printer');
INSERT INTO product
VALUES ('D', '3004', 'printer');
INSERT INTO product
VALUES ('D', '3005', 'printer');
INSERT INTO product
VALUES ('H', '3006', 'printer');
INSERT INTO product
VALUES ('H', '3007', 'printer');

CREATE TABLE Laptop
(
    model  varchar(4),
    speed  double,
    ram    int,
    hd     int,
    screen float,
    price  int,
    PRIMARY KEY (model)
);
INSERT INTO laptop
VALUES ('2001', '2.00', '2048', '240', '20.1', '3673');
INSERT INTO laptop
VALUES ('2002', '1.73', '1024', '80', '17', '949');
INSERT INTO laptop
VALUES ('2003', '1.8', '512', '60', '15.4', '549');
INSERT INTO laptop
VALUES ('2004', '2.00', '512', '60', '13.3', '1150');
INSERT INTO laptop
VALUES ('2005', '2.16', '1024', '120', '17', '2500');
INSERT INTO laptop
VALUES ('2006', '2.00', '2048', '80', '15.4', '1700');
INSERT INTO laptop
VALUES ('2007', '1.83', '1024', '120', '13.3', '1429');
INSERT INTO laptop
VALUES ('2008', '1.6', '1024', '100', '15.4', '900');
INSERT INTO laptop
VALUES ('2009', '1.6', '512', '80', '14.1', '680');
INSERT INTO laptop
VALUES ('2010', '2.00', '2048', '160', '15.4', '2300');

CREATE TABLE Printer
(
    model varchar(4),
    color boolean,
    type  varchar(7),
    price int,
    PRIMARY KEY (model)
);
INSERT INTO printer
VALUES ('3001', '1', 'ink-jet', '99');
INSERT INTO printer
VALUES ('3002', '0', 'laser', '239');
INSERT INTO printer
VALUES ('3003', '1', 'laser', '899');
INSERT INTO printer
VALUES ('3004', '1', 'ink-jet', '120');
INSERT INTO printer
VALUES ('3005', '0', 'laser', '120');
INSERT INTO printer
VALUES ('3006', '1', 'ink-jet', '100');
INSERT INTO printer
VALUES ('3007', '1', 'laser', '200');

DROP DATABASE IF EXISTS movie;
CREATE DATABASE movie;
USE movie;

CREATE TABLE Movies
(
    title      varchar(20),
    year       int,
    length     int,
    genre      varchar(10),
    studioName varchar(15),
    producerC  int,
    PRIMARY KEY (title, year)
);
INSERT INTO movies
VALUES ('Galaxy Quest', '1999', '104', 'comedy', 'DreamWorks', '67890');
INSERT INTO movies
VALUES ('Star Wars', '1977', '124', 'sciFi', 'Fox', '12345');
INSERT INTO movies
VALUES ('Wayne‘s World', '1992', '95', 'comedy', 'Paramount', '99999');

CREATE TABLE Starsin
(
    movieTitle varchar(20),
    movieYear  int,
    starName   varchar(10),
    PRIMARY KEY (movieTitle, starName)
);

CREATE TABLE MovieStar
(
    name      varchar(20),
    address   varchar(30),
    genre     varchar(10),
    birthdate date,
    phone     varchar(11),
    PRIMARY KEY (name)
);
ALTER TABLE moviestar
    ADD CONSTRAINT CHECK (genre IN ('男', '女'));
ALTER TABLE starsin
    ADD CONSTRAINT fk_moviestar FOREIGN KEY (starName) REFERENCES moviestar (name);
INSERT INTO moviestar
VALUES ('Carrie Fisher', '123 Maple St., Hollywood', '女', '1999-09-09', '123');
INSERT INTO moviestar
VALUES ('Harrison Ford', '789 Palm Dr., Beverly Hills', '男', '1977-07-07', '789');
INSERT INTO moviestar
VALUES ('Mark Hamill', '456 Oak Rd., Brentwood', '男', '1988-08-08', '456');

CREATE TABLE MovieExec
(
    name     varchar(20),
    address  varchar(15),
    cert     int,
    netWorth int,
    PRIMARY KEY (cert)
);

CREATE TABLE Studio
(
    name    varchar(20),
    address varchar(15),
    pres    int,
    PRIMARY KEY (name)
);

DROP DATABASE IF EXISTS warships;
CREATE DATABASE warships;
USE warships;

CREATE TABLE Classes
(
    class        varchar(15),
    type         varchar(2),
    country      varchar(12),
    numGuns      int,
    bore         int,
    displacement int,
    PRIMARY KEY (class)
);
INSERT INTO classes
VALUES ('Bismarck', 'bb', 'Germany', '8', '15', '42000');
INSERT INTO classes
VALUES ('Iowa', 'bb', 'USA', '9', '16', '46000');
INSERT INTO classes
VALUES ('Kongo', 'bc', 'Japan', '8', '14', '32000');
INSERT INTO classes
VALUES ('North Carolina', 'bb', 'USA', '9', '16', '37000');
INSERT INTO classes
VALUES ('Renown', 'bc', 'Gt. Britain', '6', '15', '32000');
INSERT INTO classes
VALUES ('Revenge', 'bb', 'Gt. Britain', '8', '15', '29000');
INSERT INTO classes
VALUES ('Tennessee', 'bb', 'USA', '12', '14', '32000');
INSERT INTO classes
VALUES ('Yamato', 'bb', 'Japan', '9', '18', '65000');

CREATE TABLE Ships
(
    name     varchar(20),
    class    varchar(15),
    launched varchar(4),
    PRIMARY KEY (name)
);
INSERT INTO ships
VALUES ('California', 'Tennesseel', '1921');
INSERT INTO ships
VALUES ('Haruna', 'Kongo', '1915');
INSERT INTO ships
VALUES ('Hiei', 'Kongo', '1914');
INSERT INTO ships
VALUES ('Iowa', 'Iowa', '1943');
INSERT INTO ships
VALUES ('Kirishima', 'Kongo', '1915');
INSERT INTO ships
VALUES ('Kongo', 'Kongo', '1913');
INSERT INTO ships
VALUES ('Missouri', 'Iowa', '1944');
INSERT INTO ships
VALUES ('Musashi', 'Yamato', '1942');
INSERT INTO ships
VALUES ('New Jersey', 'Iowa', '1943');
INSERT INTO ships
VALUES ('North Carolina', 'North Carolina', '1941');
INSERT INTO ships
VALUES ('Ramillies', 'Revenge', '1917');
INSERT INTO ships
VALUES ('Renown', 'Renown', '1916');
INSERT INTO ships
VALUES ('Repulse', 'Renown', '1916');
INSERT INTO ships
VALUES ('Resolution', 'Revenge', '1916');
INSERT INTO ships
VALUES ('Revenge', 'Revenge', '1916');
INSERT INTO ships
VALUES ('Royal Oak', 'Revenge', '1916');
INSERT INTO ships
VALUES ('Royal Sovereign', 'Revenge', '1916');
INSERT INTO ships
VALUES ('Tennessee', 'Tennessee', '1920');
INSERT INTO ships
VALUES ('Washington', 'North Carolina', '1941');
INSERT INTO ships
VALUES ('Wisconsin', 'Iowa', '1944');
INSERT INTO ships
VALUES ('Yamato', 'Yamato', '1941');


CREATE TABLE Battles
(
    name varchar(20),
    date varchar(10),
    PRIMARY KEY (name)
);
INSERT INTO battles
VALUES ('Denmark Strait', '5/24-27/41');
INSERT INTO battles
VALUES ('Guadalcanal', '11/15/42');
INSERT INTO battles
VALUES ('North Cape', '12/26/43');
INSERT INTO battles
VALUES ('Surigao Strait', '10/25/44');

CREATE TABLE Outcomes
(
    ship   varchar(20),
    battle varchar(20),
    result varchar(8),
    PRIMARY KEY (ship)
);
INSERT INTO outcomes
VALUES ('Arizona', 'Pearl Harbor', 'sunk');
INSERT INTO outcomes
VALUES ('Bismarck', 'Denmark Strait', 'sunk');
INSERT INTO outcomes
VALUES ('California', 'Surigao Strait', 'ok');
INSERT INTO outcomes
VALUES ('Duke of York', 'North Cape', 'ok');
INSERT INTO outcomes
VALUES ('Fuso', 'Surigao Strait', 'sunk');
INSERT INTO outcomes
VALUES ('Hood', 'Denmark Strait', 'sunk');
INSERT INTO outcomes
VALUES ('King George V', 'Denmark Strait', 'ok');
INSERT INTO outcomes
VALUES ('Kirishima', 'Guadalcanal', 'sunk');
INSERT INTO outcomes
VALUES ('Prince of Wales', 'Denmark Strait', 'damaged');
INSERT INTO outcomes
VALUES ('Rodney', 'Denmark Strait', 'ok');
INSERT INTO outcomes
VALUES ('Scharnhorst', 'North Capet', 'sunk');
INSERT INTO outcomes
VALUES ('South Dakota', 'Guadalcanal', 'damaged');
INSERT INTO outcomes
VALUES ('Tennessee', 'Surigao Strait', 'ok');
INSERT INTO outcomes
VALUES ('Washington', 'Guadalcanal', 'ok');
INSERT INTO outcomes
VALUES ('West Virginia', 'Surigao Straitl', 'ok');
INSERT INTO outcomes
VALUES ('Yamashiro', 'Surigao Straitl', 'sunk');