/* 查询只出版数学类书籍而不出版计算机类书籍的出版社*/
select distinct publish
from Book
where classes = '数学类'
except
select distinct publish
from Book
where classes = '计算机类'

/*⑺ 查询书名相同的名称对。每对只列出一次。*/
select b1.name,b2.name
from Book b1,Book b2
where b1.name = b2.name
      and b1.num<b2.num

/*⑻ 查询在指定时间内平均借书最多的所有读者。*/
create view reader_booknum
as
select id,name,count(bdate) bdatenum
from Administrator a1,Reader r1
where a1.reader_id = r1.id
      and a1.bdate>'2020-06-00'
	  and a1.bdate<'2020-09-00'
group by id,name

select id,name
from reader_booknum
where bdatenum>= all(select bdatenum
                     from reader_booknum)

/*⑼ 查询恰好借阅了3本图书的读者。*/
select id,name
from Administrator a1,Reader r1
where a1.reader_id = r1.id
group by id,name
having count(a1.reader_id)=3
	

/*⑽ 查询在指定时间内被借阅最多的书籍信息。*/
create view books_booknum
as
select num,name,count(bdate) bdatenum
from Administrator a1,book b1
where a1.book_num = b1.num
      and a1.bdate>'2020-06-00'
	  and a1.bdate<'2020-09-00'
group by num,name

select num,name
from books_booknum
where bdatenum>= all(select bdatenum
                     from books_booknum)

/*⑾ 查询所有图书的ISBN、书名、借阅次数，并按借阅次数从大到小排列。*/
select num,name,count(a1.book_num) time
from book b1,Administrator a1
where b1.num=a1.book_num
group by num,name
order by time desc

/*⑿ 查询读者已借超过30天而未还的图书数量。（假设今天为2020-11-22）*/
select count(book_num) unreturnnum
from Administrator
where condition='N' and bdate<'2020-10-22'

