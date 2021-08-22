/* ��ѯֻ������ѧ���鼮���������������鼮�ĳ�����*/
USE Library;
SELECT DISTINCT publish
FROM Book
WHERE classes = '��ѧ��'
    EXCEPT
SELECT DISTINCT publish
FROM Book
WHERE classes = '�������'

/*�� ��ѯ������ͬ�����ƶԡ�ÿ��ֻ�г�һ�Ρ�*/
USE Library;
SELECT b1.name, b2.name
FROM Book b1,
     Book b2
WHERE b1.name = b2.name
  AND b1.num < b2.num

/*�� ��ѯ��ָ��ʱ����ƽ�������������ж��ߡ�*/
CREATE VIEW reader_booknum
AS
SELECT id, name, count(bdate) bdatenum
FROM Administrator a1,
     Reader r1
WHERE a1.reader_id = r1.id
  AND a1.bdate > '2020-06-00'
  AND a1.bdate < '2020-09-00'
GROUP BY id, name

SELECT id, name
FROM reader_booknum
WHERE bdatenum >= ALL (SELECT bdatenum
                       FROM reader_booknum)

/*�� ��ѯǡ�ý�����3��ͼ��Ķ��ߡ�*/
USE Library;
SELECT id, name
FROM Administrator a1,
     Reader r1
WHERE a1.reader_id = r1.id
GROUP BY id, name
HAVING count(a1.reader_id) = 3


/*�� ��ѯ��ָ��ʱ���ڱ����������鼮��Ϣ��*/
CREATE VIEW books_booknum
AS
SELECT num, name, count(bdate) bdatenum
FROM Administrator a1,
     book b1
WHERE a1.book_num = b1.num
  AND a1.bdate > '2020-06-00'
  AND a1.bdate < '2020-09-00'
GROUP BY num, name

SELECT num, name
FROM books_booknum
WHERE bdatenum >= ALL (SELECT bdatenum
                       FROM books_booknum)

/*�� ��ѯ����ͼ���ISBN�����������Ĵ������������Ĵ����Ӵ�С���С�*/
SELECT num, name, count(a1.book_num) time
FROM book b1,
     Administrator a1
WHERE b1.num = a1.book_num
GROUP BY num, name
ORDER BY time DESC

/*�� ��ѯ�����ѽ賬��30���δ����ͼ�����������������Ϊ2020-11-22��*/
SELECT count(book_num) unreturnnum
FROM Administrator
WHERE condition = 'N'
  AND bdate < '2020-10-22'

