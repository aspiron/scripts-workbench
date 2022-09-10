create database lesson_23082022;

use lesson_23082022;

drop table if exists students;
create table students (
	firstName varchar(128) not null,
    lastName varchar(128) not null,
    avg_mark numeric(3, 1) check (avg_mark between 0 and 5),
    gender char(1) check (gender in ('M', 'F'))
);

insert into students (firstName, lastName, avg_mark, gender) values ('Олег', 'Петров', 4.3, 'M'),
																	('Семен', 'Степанов', 3.1, 'M'),
                                                                    ('Ольга', 'Семенова', 4.7, 'F'),
                                                                    ('Игорь', 'Романов', 3.1, 'M'),
                                                                    ('Ирина', 'Иванова', 2.2, 'F');
select * from students;

alter table students
add column id integer primary key auto_increment;

alter table students
change firstName first_name varchar(128);

SELECT	first_name,
		lastName,
        avg_mark*10,
        gender,
        id
FROM students;

SELECT	first_name,
		lastName,
        avg_mark*10+10,
        gender,
        id
FROM students
WHERE avg_mark <= 3.1;




