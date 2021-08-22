USE it_products;
INSERT INTO Product
VALUES ('C', '1100', 'pc');
INSERT INTO PC
VALUES ('1100', 3.2, 1024, 180, 2499)
SELECT *
FROM Product
SELECT *
FROM pc

INSERT INTO Product
SELECT maker,
       model + 1100,
       'laptop'
FROM Product
WHERE type = 'pc';
INSERT INTO Laptop
SELECT model + 1100,
       speed,
       ram,
       hd,
       17,
       price + 500
FROM pc;

DELETE
FROM PC
WHERE hd < 100;

UPDATE Product
SET maker='A'
WHERE maker = 'B'

UPDATE PC
SET ram =ram * 2,
    hd=hd + 60
SELECT *
FROM PC

UPDATE Laptop L
SET L.screen = L.screen + 1,
    L.price = L.price - 100 WHERE L.model IN
      (SELECT R.model
	  FROM Product R
	  WHERE R.maker ='B'
	  )
SELECT *
FROM laptop

USE warships;
INSERT INTO Classes
VALUES ('Nelson', 'bb', 'Gt.Britain', 9, 16, 34000)
INSERT INTO Ships
VALUES ('Nelson', 'Nelson', 1927)
INSERT INTO Ships
VALUES ('Rodney', 'Nelson', 1927)
SELECT *
FROM Classes
SELECT *
FROM ships

INSERT INTO classes
VALUES ('Vittorio Veneto', 'bb', 'Italy', 9, 15, 41000)
INSERT INTO Ships
VALUES ('Vittorio Veneto', 'Vittorio Veneto', 1940)
INSERT INTO Ships
VALUES ('Italia', 'Vittorio Veneto', 1940)
INSERT INTO ships
VALUES ('Roma', 'Vittorio Veneto', 1942)
SELECT *
FROM Classes
SELECT *
FROM ships

DELETE
FROM ships
WHERE ships.name IN
      (SELECT ship
       FROM Outcomes
       WHERE result = 'sunk'
      )
SELECT *
FROM classes

UPDATE classes
SET bore         = bore * 2.5,
    displacement = displacement / 1.1
SELECT *
FROM classes

DELETE
FROM Classes
WHERE classes.class IN
      (SELECT classes.class
       FROM classes,
            ships
       WHERE classes.class = ships.class
       GROUP BY classes.class
       HAVING count(classes.class) < 3
      )


USE movie
ALTER TABLE movies
    ADD CONSTRAINT ck_year CHECK (year >= 1915)

ALTER TABLE movies
    ADD CONSTRAINT ck_length CHECK (length >= 60 AND length <= 250)

ALTER TABLE movies
    ADD CONSTRAINT ck_studioname
        CHECK (studioname IN ('Disney', 'Fox', 'MGM', 'Paramount'))

USE movie
ALTER TABLE movies
    ADD CONSTRAINT myKey
        PRIMARY KEY (title, year);

ALTER TABLE movies
    ADD CONSTRAINT producercheck
        FOREIGN KEY (producerc) REFERENCES movieexec (cert)

USE warships
ALTER TABLE classes
    ADD CONSTRAINT mykey
        PRIMARY KEY (class, country);

ALTER TABLE outcomes
    ADD CONSTRAINT battlecheck
        FOREIGN KEY (battle) REFERENCES battles (name);


ALTER TABLE outcomes
    ADD CONSTRAINT shipcheck
        FOREIGN KEY (ship) REFERENCES ships (name);


ALTER TABLE ships
    ADD CONSTRAINT ck_classgun
        CHECK (class NOT IN (SELECT class
                             FROM classes
                             WHERE numguns > 14)
            )

USE it_products
CREATE ASSERTION  CHECK
  (NOT EXISTS
       (SELECT maker FROM product natural JOIN pc)
	   INTERSECT
	   (SELECT maker FROM Product natural JOIN Laptop)
	  )

creat assertion CHECK
 ( NOT EXISTS
    (SELECT maker
	 FROM product natural JOIN pc
	 WHERE speed>ALL
	        (SELECT l2.speed
			FROM Product p2,laptop l2
			WHERE p2.maker=maker
			AND p2.model=l2.model
			)
	 )
 )



 creat assertion CHECK
 ( NOT EXISTS
     (SELECT model
	 form laptop
	 WHERE price <=ALL
	                  (SELECT price FROM pc
					  WHERE pc.ram<laptop.ran
					  )
	 )
 )

 CREATE assertion CHECK
 (2>=ALL
         (SELECT cout(*)
		 FROM ships
		 GROUP BY class)
)





                     
                 








