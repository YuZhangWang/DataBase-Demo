EXEC sp_addlogin 'LIUXING', '1234'
EXEC sp_adduser 'LIUXING'
EXEC sp_addlogin 'PINXU', '1234'
EXEC sp_adduser 'PINXU'
EXEC sp_addlogin 'LIYONG', '1234'
EXEC sp_adduser 'LIYONG'
EXEC sp_addlogin 'ZHOPING', '1234'
EXEC sp_adduser 'ZHOPING'
EXEC sp_addlogin 'YANGLAN', '1234'
EXEC sp_adduser 'YANGLAN'


GRANT SELECT
    ON s
    TO PINXU
GRANT SELECT
    ON sc
    TO PINXU


GRANT INSERT, DELETE
    ON s
    TO LIYONG
GRANT INSERT, DELETE
    ON sc
    TO LIYONG

GRANT SELECT, UPDATE (birthday)
    ON s
    TO LIYONG

GRANT SELECT, INSERT, UPDATE, DELETE
    ON s
    TO ZHOPING
    WITH GRANT OPTION
GRANT SELECT, INSERT, UPDATE, DELETE
    ON sc
    TO ZHOPING
    WITH GRANT OPTION


EXEC sp_dropuser 'LIUXING'
EXEC sp_droplogin 'LIUXING'

EXEC sp_dropuser 'PINXU'
EXEC sp_droplogin 'PINXU'

EXEC sp_dropuser 'LIYONG'
EXEC sp_droplogin 'LIYONG'

EXEC sp_dropuser 'ZHOPING'
EXEC sp_droplogin 'ZHOPING'

EXEC sp_dropuser 'YANGLAN'
EXEC sp_droplogin 'YANGLAN'
