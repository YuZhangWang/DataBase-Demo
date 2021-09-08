USE [test]
create procedure [dbo].[GetSalary]
as
begin
    /*��������*/
    declare @name nvarchar(30);
    declare @year nvarchar(4);
    declare @lever nvarchar(10);
    declare @basicsalary float;
    declare @time float;
    declare @yearbonus float
/*����myCursor�α�*/
    declare myCursor cursor for
        select name, year, jobLevel, basicSalary, times
        from teacher;
    /*���α�*/
    open myCursor;
    fetch next from myCursor into @name,@year,@lever,@basicsalary,@time;
    /*���ݴ���*/
    while(@@FETCH_STATUS = 0)
        begin
            /*�������ս�*/
            if @lever = '����'
                begin
                    set @yearbonus = @basicsalary * 12 * 0.15 * 1 - (@time * 50);
                end;
            else
                if @lever = '�Ƽ�'
                    begin
                        set @yearbonus = @basicsalary * 12 * 0.15 * 0.8 - (@time * 50);
                    end;
                else
                    if @lever = '��Ա'
                        begin
                            set @yearbonus = @basicsalary * 12 * 0.15 * 0.5 - (@time * 50);
                        end;
                    else
                        begin
                            set @yearbonus = @basicsalary * 12 * 0.15 * 0.4 - (@time * 50);
                        end;
            /*�������ݿ�����*/
            update teacher
            set YearBonus=@yearbonus
            where name = @name;
            fetch next from myCursor into @name,@year,@lever,@basicsalary,@time;
        end
    /*�ر��α�*/
    close myCursor
    deallocate myCursor
end
select *
from Teacher