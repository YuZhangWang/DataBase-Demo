CREATE DATABASE test
    ON
    ( NAME ='test',
        FILENAME ='D:\Code\DataBase\03SQLServerTest\test.mdf'
        )

USE test
CREATE TABLE YearBonus
(
    [name]      varchar(30), --����
    [year]      varchar(4),  --���
    jobLevel    varchar(10), --��������
    basicSalary money,       --��������
    times       smallint,    --��ٴ���
    YearBonus   money,       --���ս�
    CONSTRAINT PK_YearBonus PRIMARY KEY (name, [year])
)

INSERT INTO YearBonus
VALUES ('�ܺ���', '2016', '�Ƽ�', 9000, 20, NULL)
INSERT INTO YearBonus
VALUES ('��ѧ��', '2016', '����', 10000, 10, NULL)
INSERT INTO YearBonus
VALUES ('�¿�', '2016', '�Ƽ�', 9000, 10, NULL)
INSERT INTO YearBonus
VALUES ('�޺�', '2016', '����', 8000, 10, NULL)
INSERT INTO YearBonus
VALUES ('���', '2016', '��Ա', 8000, 20, NULL)
INSERT INTO YearBonus
VALUES ('����', '2016', '����', 9000, 10, NULL)
INSERT INTO YearBonus
VALUES ('���Ӻ�', '2016', '����', 5000, 10, NULL)
INSERT INTO YearBonus
VALUES ('����', '2016', '����', 6000, 5, NULL)
INSERT INTO YearBonus
VALUES ('�ŷ�', '2016', '��Ա', 8000, 20, NULL)

