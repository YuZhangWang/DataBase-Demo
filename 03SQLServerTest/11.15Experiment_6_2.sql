USE [test]
CREATE PROCEDURE [dbo].[GetSalary]
AS
BEGIN
    /*��������*/
    DECLARE @name nvarchar(30);
    DECLARE @year nvarchar(4);
    DECLARE @lever nvarchar(10);
    DECLARE @basicsalary float;
    DECLARE @time float;
    DECLARE @yearbonus float
/*����myCursor�α�*/
    DECLARE myCursor CURSOR FOR
        SELECT name, year, jobLevel, basicSalary, times
        FROM teacher;
    /*���α�*/
    OPEN myCursor;
    FETCH NEXT FROM myCursor INTO @name,@year,@lever,@basicsalary,@time;
    /*���ݴ���*/
    WHILE(@@FETCH_STATUS = 0)
        BEGIN
            /*�������ս�*/
            IF @lever = '����'
                BEGIN
                    SET @yearbonus = @basicsalary * 12 * 0.15 * 1 - (@time * 50);
                END;
            ELSE
                IF @lever = '�Ƽ�'
                    BEGIN
                        SET @yearbonus = @basicsalary * 12 * 0.15 * 0.8 - (@time * 50);
                    END;
                ELSE
                    IF @lever = '��Ա'
                        BEGIN
                            SET @yearbonus = @basicsalary * 12 * 0.15 * 0.5 - (@time * 50);
                        END;
                    ELSE
                        BEGIN
                            SET @yearbonus = @basicsalary * 12 * 0.15 * 0.4 - (@time * 50);
                        END;
            /*�������ݿ�����*/
            UPDATE teacher
            SET YearBonus=@yearbonus
            WHERE name = @name;
            FETCH NEXT FROM myCursor INTO @name,@year,@lever,@basicsalary,@time;
        END
    /*�ر��α�*/
    CLOSE myCursor
    DEALLOCATE myCursor
END
SELECT *
FROM Teacher

USE [test]
GO
DECLARE @return_value int
EXEC @return_value = [dbo].[GetSalary]
SELECT 'Return Value' = @return_value
GO