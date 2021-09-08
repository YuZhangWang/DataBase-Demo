create database test
    on
    ( name ='test',
        filename ='E:\data\test.mdf'
        )

use test
create table YearBonus
(
    [name]      varchar(30), --����
    [year]      varchar(4),  --���
    jobLevel    varchar(10), --��������
    basicSalary money,       --��������
    times       smallint,    --��ٴ���
    YearBonus   money,       --���ս�
    constraint PK_YearBonus primary key (name, [year])
)

insert into YearBonus
values ('�ܺ���', '2016', '�Ƽ�', 9000, 20, null)
insert into YearBonus
values ('��ѧ��', '2016', '����', 10000, 10, null)
insert into YearBonus
values ('�¿�', '2016', '�Ƽ�', 9000, 10, null)
insert into YearBonus
values ('�޺�', '2016', '����', 8000, 10, null)
insert into YearBonus
values ('���', '2016', '��Ա', 8000, 20, null)
insert into YearBonus
values ('����', '2016', '����', 9000, 10, null)
insert into YearBonus
values ('���Ӻ�', '2016', '����', 5000, 10, null)
insert into YearBonus
values ('����', '2016', '����', 6000, 5, null)
insert into YearBonus
values ('�ŷ�', '2016', '��Ա', 8000, 20, null)

