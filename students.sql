-- Homelearning Task - SQL

create database students;
show databases;
use students;

-- Create new table 
create table student_details(
student_id INT NOT NULL PRIMARY KEY,
student_name VARCHAR(30) NOT NULL,
dob DATE NOT NULL,
year_group VARCHAR(10) NOT NULL);

explain student_details;

-- Create another table
create table marks(
student_id INT NOT NULL PRIMARY KEY,
eng INT,
maths INT,
science INT,
social INT,
grade VARCHAR(5) NOT NULL);

explain marks;

insert into student_details values(
'00202201', 'Oliver Stanley', '2007-11-20', '9P');

insert into student_details values
(00202202, 'James Brain', '2007-12-01', '9H'),
(00202203, 'Shan Azar', '2008-05-19', '9S'),
(00202204, 'Sunil Kumar', '2008-03-22', '9S'),
(00202205, 'Raneesh George', '2008-06-05', '9S'),
(00202206, 'Varun Rakesh', '2007-09-14', '9P'),
(00202207, 'Guiseppe Ivo', '2007-10-30', '9H'),
(00202208, 'Daniel Ralph', '2008-04-24', '9H'),
(00202209, 'Neel Ronanki', '2008-07-07', '9P'),
(00202210, 'Gaurav Patel', '2008-02-22', '9P'
);

select * from student_details;
select * from student_details order by year_group;

insert into marks values
(00202201, 70,75,50,60, 'C'),
(00202202, 70,77,80,85, 'B'),
(00202203, 60,65,70,72, 'C'),
(00202204, 80,75,90,95, 'A'),
(00202205, 77,87,92,93, 'A'),
(00202206, 89,67,78,86, 'B'),
(00202207, 90,77,75,85, 'A'),
(00202208, 55,65,66,78, 'C'),
(00202209, 80,70,80,87, 'B'),
(00202210, 90,100,95,90, 'A');

select * from marks;
select * from marks order by maths;
update marks set maths=100 where student_id = 00202206;
select * from marks;
select * from student_details;
update student_details set year_group = '9H' where student_id = 00202206;
select * from student_details;

delete from marks where student_id = 00202205;

select student_details.student_id, student_name, grade from student_details 
inner join marks where student_details.student_id = marks.student_id;	

select * from student_details 
left join marks on student_details.student_id = marks.student_id;

update marks set grade = 'A' where maths = 100 and student_id = 00202206;

insert into marks values (00202205, 70,80,77,80, 'B');

select * from marks where grade in ('A','B');

select * from student_details, marks where grade = 'A' and student_details.student_id = marks.student_id;

select * from student_details order by year_group asc;

select * from marks where eng >= 70 and maths >= 80;

select student_name as NAME, student_id as ID, year_group as YEAR
from student_details
where student_id in (
	select student_id from marks where grade = 'A' )
order by year_group;

select year_group as YEAR, count(year_group)
from student_details
group by year_group;

    

