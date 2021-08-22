CREATE DATABASE Library
/*����������*/
USE Library
CREATE TABLE Reader
(
    id    char(18) PRIMARY KEY,
    name  varchar(30),
    sex   char(1) CHECK (sex IN ('F', 'M')),
    age   int,
    phone char(11),
)

/*�����鼮��*/
CREATE TABLE Book
(
    num        int PRIMARY KEY,
    classes    varchar(20),
    name       varchar(30),
    publish    varchar(20),
    publictime date,
    inventory  int,
    readtime   int,
)
/*��������Ա��*/
CREATE TABLE Administrator
(
    book_num  int,
    reader_id char(18),
    bdate     varchar(20) NOT NULL,
    rdate     varchar(20),
    condition char(1) CHECK (condition IN ('Y', 'N')),
    CONSTRAINT pk_booknum FOREIGN KEY (book_num) REFERENCES Book (num),
    CONSTRAINT pk_readid FOREIGN KEY (reader_id) REFERENCES Reader (id),
)

INSERT INTO Reader
VALUES ('320981200006052755', 'С��', 'F', 21, 17551600688);
INSERT INTO Reader
VALUES ('320981200006050000', '���', 'M', 11, 15189390000);
INSERT INTO Reader
VALUES ('320981200006051111', '����', 'F', 23, 17551601111);
INSERT INTO Reader
VALUES ('320981200006052222', '����', 'M', 21, 17551602222);
INSERT INTO Reader
VALUES ('320981200006053333', '����', 'F', 21, 17551603333);
INSERT INTO Reader
VALUES ('320981200006054444', '��ϼ', 'M', 21, 17551604444);
INSERT INTO Reader
VALUES ('320981200006055555', '�', 'F', 21, 17551605555);


INSERT INTO Book
VALUES (10001, '��ѧ��', '�ߵ���ѧ1', '�Ͼ���������', '2010-04-25', 60, 220)
INSERT INTO Book
VALUES (10002, '��ѧ��', '�ߵ���ѧ2', '�Ͼ���������', '2010-04-25', 55, 400)
INSERT INTO Book
VALUES (10003, '�������', 'c����', '�Ͼ���������', '2010-04-25', 20, 100)
INSERT INTO Book
VALUES (10004, '��ѧ��', '���Դ���', '�Ͼ���ѧ������', '2015-07-05', 15, 20)
INSERT INTO Book
VALUES (10005, '��ѧ��', '������ͳ��ѧ', '�Ͼ���ѧ������', '2015-07-05', 60, 90)
INSERT INTO Book
VALUES (10006, '�������', 'AndroidȨ��ָ��', '�����ʵ������', '2016-02-10', 60, 40)
INSERT INTO Book
VALUES (10007, '�������', 'Java���˼��', '�����ʵ������', '2016-03-25', 60, 132)
INSERT INTO Book
VALUES (10008, '��ѧ��', '��������', '���������', '2010-09-18', 16, 310)
INSERT INTO Book
VALUES (10009, '��ѧ��', '�ҿ�ʢ��', '���������', '2010-04-25', 43, 220)
INSERT INTO Book
VALUES (10010, '��ѧ��', '�ߵ���ѧ1', '�Ͼ���ѧ������', '2015-07-05', 54, 42)
INSERT INTO Book
VALUES (10011, '�������', 'c����', '�����ʵ������', '2016-02-10', 21, 76)


INSERT INTO Administrator
VALUES (10001, '320981200006052755', '2020-06-05', '2020-06-09', 'Y')
INSERT INTO Administrator
VALUES (10005, '320981200006052755', '2020-07-05', '2020-07-09', 'Y')
INSERT INTO Administrator
VALUES (10009, '320981200006052755', '2020-08-05', NULL, 'N')
INSERT INTO Administrator
VALUES (10002, '320981200006050000', '2020-11-05', '2020-11-09', 'Y')
INSERT INTO Administrator
VALUES (10003, '320981200006050000', '2020-11-05', NULL, 'N')
INSERT INTO Administrator
VALUES (10004, '320981200006051111', '2020-11-05', NULL, 'N')
INSERT INTO Administrator
VALUES (10006, '320981200006051111', '2020-11-05', '2020-11-09', 'Y')
INSERT INTO Administrator
VALUES (10007, '320981200006052222', '2020-07-15', '2020-11-09', 'Y')
INSERT INTO Administrator
VALUES (10008, '320981200006052222', '2020-07-15', NULL, 'N')
INSERT INTO Administrator
VALUES (10010, '320981200006052222', '2020-08-15', '2020-09-09', 'Y')
INSERT INTO Administrator
VALUES (10011, '320981200006053333', '2020-08-15', '2020-08-17', 'Y')
INSERT INTO Administrator
VALUES (10011, '320981200006053333', '2020-08-19', '2020-08-20', 'Y')
INSERT INTO Administrator
VALUES (10011, '320981200006053333', '2020-08-21', '2020-08-22', 'Y')
INSERT INTO Administrator
VALUES (10011, '320981200006053333', '2020-08-23', '2020-08-25', 'Y')
INSERT INTO Administrator
VALUES (10003, '320981200006054444', '2020-08-23', '2020-08-25', 'Y')
INSERT INTO Administrator
VALUES (10001, '320981200006054444', '2020-08-23', NULL, 'N')
INSERT INTO Administrator
VALUES (10007, '320981200006054444', '2020-08-23', '2020-08-25', 'Y')
INSERT INTO Administrator
VALUES (10008, '320981200006054444', '2020-10-23', '2020-10-25', 'Y')
INSERT INTO Administrator
VALUES (10006, '320981200006054444', '2020-10-23', NULL, 'N')
INSERT INTO Administrator
VALUES (10004, '320981200006054444', '2020-06-13', '2020-06-25', 'Y')
INSERT INTO Administrator
VALUES (10002, '320981200006055555', '2020-06-13', '2020-06-25', 'Y')
INSERT INTO Administrator
VALUES (10010, '320981200006055555', '2020-07-13', '2020-07-25', 'Y')
INSERT INTO Administrator
VALUES (10006, '320981200006055555', '2020-04-13', '2020-04-25', 'Y')
INSERT INTO Administrator
VALUES (10007, '320981200006055555', '2020-11-13', NULL, 'N')
INSERT INTO Administrator
VALUES (10011, '320981200006055555', '2020-11-15', NULL, 'N')