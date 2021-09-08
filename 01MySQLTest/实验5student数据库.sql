create database stud
use stud
create table Class
(
    cid     varchar(8),
    cname   varchar(30),
    monitor varchar(10),
    constraint PK_Class primary key (cid)
)

create table S
(
    sno      varchar(10),
    sn       varchar(40) not null,
    sex      varchar(2),
    birthday datetime,
    sd       varchar(4),
    cid      varchar(8),
    constraint PK_S primary key (sno),
    constraint FK_S_Class foreign key (cid) references Class (cid)
) --
alter table add

create table C
(
    cno   varchar(10),
    cn    varchar(40) not null,
    score numeric(5, 1),
    pno   varchar(10),
    constraint PK_C primary key (cno)
)

create table SC
(
    sno   varchar(10),
    cno   varchar(10),
    grade tinyint,
    constraint PK_SC primary key (sno, cno),
    constraint FK_SC_S foreign key (sno) references S (sno),
    constraint FK_SC_C foreign key (cno) references C (cno)
)

insert into class
values ('6231', '�ƿ�1��', null)
insert into class
values ('8451', '��1��', null)
insert into class
values ('8551', '����1��', null)

insert into S
values ('990104', '����', '��', '1995-10-2', 'CS', '6231')
insert into S
values ('990123', '��Ƽ', 'Ů', '1994-8-21', 'CS', '6231')
insert into S
values ('990137', 'ɳ��ǿ', '��', '1996-4-21', 'MA', '8551')
insert into S
values ('990912', '����', '��', '1995-7-23', 'CS', '6231')
insert into S
values ('990910', '����', '��', '1997-5-1', 'PH', '8451')
insert into S
values ('990911', '��ϲ��', '��', '1993-8-31', 'CS', '6231')
insert into S
values ('010133', '��ΰ��', '��', '1994-10-9', 'CS', '6231')
insert into S
values ('010131', 'ëСƽ', '��', '1992-3-11', 'MA', '8551')
insert into S
values ('010903', '����', '��', '1998-5-4', 'MA', '8551')
insert into S
values ('010904', '������', '��', '1994-6-25', 'CS', '6231')

insert into C
values ('C135', '��ѧ', 5.5, null)
insert into C
values ('C123', '���ݿ�ԭ��', 4, 'C135')
insert into C
values ('C125', 'JAVA', 2, 'C135')
insert into C
values ('C126', 'VB', 2, 'C135')
insert into C
values ('C132', '���ݽṹ', 3.5, 'C135')
insert into C
values ('C133', 'PASCAL', 3, 'C135')
insert into C
values ('C134', '����ϵͳ', 3, 'C132')

insert into SC
values ('990104', 'C135', 88)
insert into SC
values ('990104', 'C132', 98)
insert into SC
values ('990104', 'C123', 82)
insert into SC
values ('990104', 'C126', 85)
insert into SC
values ('990123', 'C135', 95)
insert into SC
values ('990123', 'C132', 80)
insert into SC
values ('990123', 'C123', 72)
insert into SC
values ('010131', 'C135', 60)
insert into SC
values ('010133', 'C133', 60)
insert into SC
values ('010133', 'C135', 60)
insert into SC
values ('990137', 'C135', 60)
insert into SC
values ('990137', 'C133', 80)
insert into SC
values ('990912', 'C135', 40)
insert into SC
values ('990912', 'C132', 56)
insert into SC
values ('990912', 'C133', 65)
insert into SC
values ('990912', 'C134', 90)
insert into SC
values ('990912', 'C123', 80)
insert into SC
values ('990912', 'C125', 80)
insert into SC
values ('990912', 'C126', 80)
insert into SC
values ('990910', 'C135', 69)
insert into SC
values ('990910', 'C132', 93)
insert into SC
values ('990911', 'C123', 68)
insert into SC
values ('990911', 'C134', 77)
insert into SC
values ('990911', 'C125', 84)
insert into SC
values ('990911', 'C133', 73)
insert into SC
values ('990911', 'C135', 84)
insert into SC
values ('990911', 'C132', 90)

insert into SC
values ('010904', 'C125', null)






