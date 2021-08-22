/* 查询只出版数学类书籍而不出版计算机类书籍的出版社*/
USE Library;
SELECT DISTINCT publish
FROM Book
WHERE classes = '数学类'
    EXCEPT
SELECT DISTINCT publish
FROM Book
WHERE classes = '计算机类'

/*⑺ 查询书名相同的名称对。每对只列出一次。*/
USE Library;
SELECT b1.name, b2.name
FROM Book b1,
     Book b2
WHERE b1.name = b2.name
  AND b1.num < b2.num

/*⑻ 查询在指定时间内平均借书最多的所有读者。*/
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

/*⑼ 查询恰好借阅了3本图书的读者。*/
USE Library;
SELECT id, name
FROM Administrator a1,
     Reader r1
WHERE a1.reader_id = r1.id
GROUP BY id, name
HAVING count(a1.reader_id) = 3


/*⑽ 查询在指定时间内被借阅最多的书籍信息。*/
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

/*⑾ 查询所有图书的ISBN、书名、借阅次数，并按借阅次数从大到小排列。*/
SELECT num, name, count(a1.book_num) time
FROM book b1,
     Administrator a1
WHERE b1.num = a1.book_num
GROUP BY num, name
ORDER BY time DESC

/*⑿ 查询读者已借超过30天而未还的图书数量。（假设今天为2020-11-22）*/
SELECT count(book_num) unreturnnum
FROM Administrator
WHERE condition = 'N'
  AND bdate < '2020-10-22'

