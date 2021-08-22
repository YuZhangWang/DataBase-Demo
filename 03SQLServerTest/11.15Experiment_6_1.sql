CREATE DATABASE test
    ON
    ( NAME ='test',
        FILENAME ='D:\Code\DataBase\03SQLServerTest\test.mdf'
        )

USE test
CREATE TABLE YearBonus
(
    [name]      varchar(30), --姓名
    [year]      varchar(4),  --年份
    jobLevel    varchar(10), --工作级别
    basicSalary money,       --基本工资
    times       smallint,    --请假次数
    YearBonus   money,       --年终奖
    CONSTRAINT PK_YearBonus PRIMARY KEY (name, [year])
)

INSERT INTO YearBonus
VALUES ('曹海峻', '2016', '科级', 9000, 20, NULL)
INSERT INTO YearBonus
VALUES ('曹学成', '2016', '处级', 10000, 10, NULL)
INSERT INTO YearBonus
VALUES ('陈俊', '2016', '科级', 9000, 10, NULL)
INSERT INTO YearBonus
VALUES ('崔弘', '2016', '处级', 8000, 10, NULL)
INSERT INTO YearBonus
VALUES ('李广', '2016', '科员', 8000, 20, NULL)
INSERT INTO YearBonus
VALUES ('刘飞', '2016', '处级', 9000, 10, NULL)
INSERT INTO YearBonus
VALUES ('闵子豪', '2016', '工人', 5000, 10, NULL)
INSERT INTO YearBonus
VALUES ('隋武', '2016', '工人', 6000, 5, NULL)
INSERT INTO YearBonus
VALUES ('张帆', '2016', '科员', 8000, 20, NULL)

