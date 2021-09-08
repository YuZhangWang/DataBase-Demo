/* ��ѯֻ������ѧ���鼮���������������鼮�ĳ�����*/
select distinct publish
from Book
where classes = '��ѧ��'
    except
select distinct publish
from Book
where classes = '�������'

/*�� ��ѯ������ͬ�����ƶԡ�ÿ��ֻ�г�һ�Ρ�*/
select b1.name, b2.name
from Book b1,
     Book b2
where b1.name = b2.name
  and b1.num < b2.num

/*�� ��ѯ��ָ��ʱ����ƽ�������������ж��ߡ�*/
create view reader_booknum
as
select id, name, count(bdate) bdatenum
from Administrator a1,
     Reader r1
where a1.reader_id = r1.id
  and a1.bdate > '2020-06-00'
  and a1.bdate < '2020-09-00'
group by id, name

select id, name
from reader_booknum
where bdatenum >= all (select bdatenum
                       from reader_booknum)

/*�� ��ѯǡ�ý�����3��ͼ��Ķ��ߡ�*/
select id, name
from Administrator a1,
     Reader r1
where a1.reader_id = r1.id
group by id, name
having count(a1.reader_id) = 3


/*�� ��ѯ��ָ��ʱ���ڱ����������鼮��Ϣ��*/
create view books_booknum
as
select num, name, count(bdate) bdatenum
from Administrator a1,
     book b1
where a1.book_num = b1.num
  and a1.bdate > '2020-06-00'
  and a1.bdate < '2020-09-00'
group by num, name

select num, name
from books_booknum
where bdatenum >= all (select bdatenum
                       from books_booknum)

/*�� ��ѯ����ͼ���ISBN�����������Ĵ������������Ĵ����Ӵ�С���С�*/
select num, name, count(a1.book_num) time
from book b1,
     Administrator a1
where b1.num = a1.book_num
group by num, name
order by time desc

/*�� ��ѯ�����ѽ賬��30���δ����ͼ�����������������Ϊ2020-11-22��*/
select count(book_num) unreturnnum
from Administrator
where condition = 'N'
  and bdate < '2020-10-22'

