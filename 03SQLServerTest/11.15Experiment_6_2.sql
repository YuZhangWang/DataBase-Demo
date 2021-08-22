USE [test]
CREATE PROCEDURE [dbo].[GetSalary]
AS
BEGIN
    /*声明变量*/
    DECLARE @name nvarchar(30);
    DECLARE @year nvarchar(4);
    DECLARE @lever nvarchar(10);
    DECLARE @basicsalary float;
    DECLARE @time float;
    DECLARE @yearbonus float
/*声明myCursor游标*/
    DECLARE myCursor CURSOR FOR
        SELECT name, year, jobLevel, basicSalary, times
        FROM teacher;
    /*打开游标*/
    OPEN myCursor;
    FETCH NEXT FROM myCursor INTO @name,@year,@lever,@basicsalary,@time;
    /*数据处理*/
    WHILE(@@FETCH_STATUS = 0)
        BEGIN
            /*计算年终奖*/
            IF @lever = '处级'
                BEGIN
                    SET @yearbonus = @basicsalary * 12 * 0.15 * 1 - (@time * 50);
                END;
            ELSE
                IF @lever = '科级'
                    BEGIN
                        SET @yearbonus = @basicsalary * 12 * 0.15 * 0.8 - (@time * 50);
                    END;
                ELSE
                    IF @lever = '科员'
                        BEGIN
                            SET @yearbonus = @basicsalary * 12 * 0.15 * 0.5 - (@time * 50);
                        END;
                    ELSE
                        BEGIN
                            SET @yearbonus = @basicsalary * 12 * 0.15 * 0.4 - (@time * 50);
                        END;
            /*跟新数据库数据*/
            UPDATE teacher
            SET YearBonus=@yearbonus
            WHERE name = @name;
            FETCH NEXT FROM myCursor INTO @name,@year,@lever,@basicsalary,@time;
        END
    /*关闭游标*/
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