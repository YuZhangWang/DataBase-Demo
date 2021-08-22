USE [test]
create procedure [dbo].[GetSalary]
as
begin
/*声明变量*/
declare @name nvarchar(30);
declare @year nvarchar(4);
declare @lever nvarchar(10);
declare @basicsalary float;
declare @time float;
declare  @yearbonus float
/*声明myCursor游标*/
declare myCursor cursor for
  select name,year,jobLevel,basicSalary,times
  from teacher;
  /*打开游标*/
open myCursor;
fetch next from myCursor into @name,@year,@lever,@basicsalary,@time;
 /*数据处理*/
 while(@@FETCH_STATUS=0)
	begin
 /*计算年终奖*/
	if @lever='处级'
	begin
	set @yearbonus=@basicsalary*12*0.15*1-(@time*50);
	end;
	else
	if @lever='科级'
    begin
    set @yearbonus=@basicsalary*12*0.15*0.8-(@time*50);
	end;
	else
	if @lever='科员'
	begin
    set @yearbonus=@basicsalary*12*0.15*0.5-(@time*50);
	end;
	else
	begin
    set @yearbonus=@basicsalary*12*0.15*0.4-(@time*50);
	end;
	 /*跟新数据库数据*/
    update teacher 
	set YearBonus=@yearbonus
	where name=@name;
	fetch next from myCursor into @name,@year,@lever,@basicsalary,@time;
	end
 /*关闭游标*/
 close myCursor
 deallocate myCursor
 end
 select * from Teacher