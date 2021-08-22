create trigger lowpricepctrigger
on pc 
for update as
declare @old_price real,@new_price real,@old_speed real,@new_speed real
       if update(price)
	   begin 
	           select@old_price = 
	          


when(newrow.price<all
                  (select pc.price from pc
                   where pc.speed = newrow.speed))
begin
     delete from pc
     where(model,speed,ram,hd,price)in newstuff;
     insert into pc
               (select * from oldstuff);
end;


create view PichExec as
select name,address,cert,networth
from movieexec
where networth>10000000


create view StudioPress as
select M.name,M.address,cert
from movieexec M,studio
where cert=pres
select * from StudioPress

create view ExecutiveStar as
select M1.name,M1.address,gender,birthdate,cert,networth
from moviestar M1,movieexec M2
where M1.name=M2.name
select * from ExecutiveStar




