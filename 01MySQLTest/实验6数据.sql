create database test
on
( name='test',
  filename='E:\data\test.mdf'
)

use test
create table YearBonus
( [name] varchar(30),   --姓名
  [year] varchar(4),    --年份
  jobLevel varchar(10), --工作级别
  basicSalary money,    --基本工资
  times smallint,       --请假次数
  YearBonus money,      --年终奖
  constraint PK_YearBonus primary key(name,[year])
)

insert into YearBonus values('曹海峻','2016','科级',9000,20,null)
insert into YearBonus values('曹学成','2016','处级',10000,10,null)
insert into YearBonus values('陈俊','2016','科级',9000,10,null)
insert into YearBonus values('崔弘','2016','处级',8000,10,null)
insert into YearBonus values('李广','2016','科员',8000,20,null)
insert into YearBonus values('刘飞','2016','处级',9000,10,null)
insert into YearBonus values('闵子豪','2016','工人',5000,10,null)
insert into YearBonus values('隋武','2016','工人',6000,5,null)
insert into YearBonus values('张帆','2016','科员',8000,20,null)

