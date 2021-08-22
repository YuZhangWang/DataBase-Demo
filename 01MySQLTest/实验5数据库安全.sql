exec sp_addlogin 'LIUXING','1234'
exec sp_adduser 'LIUXING'
exec sp_addlogin 'PINXU','1234'
exec sp_adduser 'PINXU'
exec sp_addlogin 'LIYONG','1234'
exec sp_adduser 'LIYONG'
exec sp_addlogin 'ZHOPING','1234'
exec sp_adduser 'ZHOPING'
exec sp_addlogin 'YANGLAN','1234'
exec sp_adduser 'YANGLAN'



grant select
on  s
to PINXU
grant select
on sc
to PINXU


grant insert,delete
on s
to LIYONG
grant insert,delete
on sc
to LIYONG

grant select,update(birthday)
on s
to LIYONG

grant select,insert,update,delete
on s
to ZHOPING
with grant option
grant select,insert,update,delete
on sc
to ZHOPING
with grant option



exec sp_dropuser 'LIUXING'
exec sp_droplogin 'LIUXING'

exec sp_dropuser 'PINXU'
exec sp_droplogin 'PINXU'

exec sp_dropuser 'LIYONG'
exec sp_droplogin 'LIYONG'

exec sp_dropuser 'ZHOPING'
exec sp_droplogin 'ZHOPING'

exec sp_dropuser 'YANGLAN'
exec sp_droplogin 'YANGLAN'
