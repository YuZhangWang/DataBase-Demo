create database Library
/*创建读者类*/
use Library
create table Reader
(
   id char(18) primary key,
   name varchar(30),
   sex char(1) check (sex in ('F','M')),
   age int,
   phone char(11),
   )

/*创建书籍表*/
create table Book
(
num int primary key,
classes varchar(20),
name varchar(30),
publish varchar(20),
publictime date,
inventory int,
readtime int,
)
/*创建管理员表*/
create table Administrator
(
book_num int,
reader_id char(18),
bdate varchar(20) not null,
rdate varchar(20),
condition char(1) check (condition in('Y','N')),
constraint pk_booknum foreign key(book_num) references Book(num),
constraint pk_readid foreign key(reader_id) references	Reader(id),
)

insert into Reader
values('320981200006052755','小黑','F',21,17551600688);
insert into Reader
values('320981200006050000','李红','M',11,15189390000);
insert into Reader
values('320981200006051111','吴忠','F',23,17551601111);
insert into Reader
values('320981200006052222','春丽','M',21,17551602222);
insert into Reader
values('320981200006053333','蛋总','F',21,17551603333);
insert into Reader
values('320981200006054444','王霞','M',21,17551604444);
insert into Reader
values('320981200006055555','李单','F',21,17551605555);


insert into Book
values(10001,'数学类','高等数学1','南京理工出版社','2010-04-25',60,220)
insert into Book
values(10002,'数学类','高等数学2','南京理工出版社','2010-04-25',55,400)
insert into Book
values(10003,'计算机类','c语言','南京理工出版社','2010-04-25',20,100)
insert into Book
values(10004,'数学类','线性代数','南京大学出版社','2015-07-05',15,20)
insert into Book
values(10005,'数学类','概率与统计学','南京大学出版社','2015-07-05',60,90)
insert into Book
values(10006,'计算机类','Android权威指南','人民邮电出版社','2016-02-10',60,40)
insert into Book
values(10007,'计算机类','Java编程思想','人民邮电出版社','2016-03-25',60,132)
insert into Book
values(10008,'文学类','三国鼎立','人民出版社','2010-09-18',16,310)
insert into Book
values(10009,'文学类','且看盛唐','人民出版社','2010-04-25',43,220)
insert into Book
values(10010,'数学类','高等数学1','南京大学出版社','2015-07-05',54,42)
insert into Book
values(10011,'计算机类','c语言','人民邮电出版社','2016-02-10',21,76)


insert into Administrator
values(10001,'320981200006052755','2020-06-05','2020-06-09','Y')
insert into Administrator
values(10005,'320981200006052755','2020-07-05','2020-07-09','Y')
insert into Administrator
values(10009,'320981200006052755','2020-08-05',null,'N')
insert into Administrator
values(10002,'320981200006050000','2020-11-05','2020-11-09','Y')
insert into Administrator
values(10003,'320981200006050000','2020-11-05',null,'N')
insert into Administrator
values(10004,'320981200006051111','2020-11-05',null,'N')
insert into Administrator
values(10006,'320981200006051111','2020-11-05','2020-11-09','Y')
insert into Administrator
values(10007,'320981200006052222','2020-07-15','2020-11-09','Y')
insert into Administrator
values(10008,'320981200006052222','2020-07-15',null,'N')
insert into Administrator
values(10010,'320981200006052222','2020-08-15','2020-09-09','Y')
insert into Administrator
values(10011,'320981200006053333','2020-08-15','2020-08-17','Y')
insert into Administrator
values(10011,'320981200006053333','2020-08-19','2020-08-20','Y')
insert into Administrator
values(10011,'320981200006053333','2020-08-21','2020-08-22','Y')
insert into Administrator
values(10011,'320981200006053333','2020-08-23','2020-08-25','Y')
insert into Administrator
values(10003,'320981200006054444','2020-08-23','2020-08-25','Y')
insert into Administrator
values(10001,'320981200006054444','2020-08-23',null,'N')
insert into Administrator
values(10007,'320981200006054444','2020-08-23','2020-08-25','Y')
insert into Administrator
values(10008,'320981200006054444','2020-10-23','2020-10-25','Y')
insert into Administrator
values(10006,'320981200006054444','2020-10-23',null,'N')
insert into Administrator
values(10004,'320981200006054444','2020-06-13','2020-06-25','Y')
insert into Administrator
values(10002,'320981200006055555','2020-06-13','2020-06-25','Y')
insert into Administrator
values(10010,'320981200006055555','2020-07-13','2020-07-25','Y')
insert into Administrator
values(10006,'320981200006055555','2020-04-13','2020-04-25','Y')
insert into Administrator
values(10007,'320981200006055555','2020-11-13',null,'N')
insert into Administrator
values(10011,'320981200006055555','2020-11-15',null,'N')


