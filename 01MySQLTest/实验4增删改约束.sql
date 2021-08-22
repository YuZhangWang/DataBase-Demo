USE it_products
CREATE
ASSERTION
CHECK
(NOT EXISTS
    (SELECT maker FROM product NATURAL JOIN pc)
    INTERSECT
    (SELECT maker FROM Product NATURAL JOIN Laptop)
)

creat assertion
CHECK
(NOT EXISTS
    (SELECT maker
    FROM product NATURAL JOIN pc
    WHERE speed> ALL
    (SELECT l2.speed
    FROM Product p2,laptop l2
    WHERE p2.maker=maker
    AND p2.model=l2.model
    )
    )
)


creat assertion
CHECK
(NOT EXISTS
    (SELECT model
    form laptop
    WHERE price <= ALL
    (SELECT price FROM pc
    WHERE pc.ram<laptop.ran
    )
    )
)

CREATE
assertion
CHECK
(2>= ALL
    (SELECT cout(*)
    FROM ships
    GROUP BY class)
)





                     
                 








