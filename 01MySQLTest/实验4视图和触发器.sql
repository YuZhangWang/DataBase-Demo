CREATE VIEW PichExec AS
SELECT name, address, cert, networth
FROM movieexec
WHERE networth > 10000000


CREATE VIEW StudioPress AS
SELECT M.name, M.address, cert
FROM movieexec M,
     studio
WHERE cert = pres
SELECT *
FROM StudioPress

CREATE VIEW ExecutiveStar AS
SELECT M1.name, M1.address, gender, birthdate, cert, networth
FROM moviestar M1,
     movieexec M2
WHERE M1.name = M2.name
SELECT *
FROM ExecutiveStar




