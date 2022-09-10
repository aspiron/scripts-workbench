create database University;
use University;
create table Students (id integer primary key auto_increment,
						name varchar(128) not null,
                        age integer
);

create table Teachers (id integer primary key auto_increment,
						name varchar(128) not null,
                        age integer
                        );

create table Competencies (id integer primary key auto_increment,
						title varchar(128) not null
);

create table Teachers2Competencies (id integer(128) primary key auto_increment,
						teacher_id integer,
						competencies_id integer
);


create table Courses (id integer primary key auto_increment,
									teacher_id integer, 
									title varchar(128) not null,
                                    headman_id integer
);

create table Students2Courses (id integer primary key auto_increment,
								student_id integer(128),
								course_id integer
);

show tables;

insert into Students (name, age) values ('Anatoliy', 29),
										('Oleg', 25),
										('Semen', 27),
										('Olesya', 28),
										('Olga', 31),
										('Ivan', 22);
                            
insert into Teachers (name, age) values ('Petr', 39),
										('Maxim', 35),
										('Anton', 37),
										('Vsevolod', 38),
										('Egor', 41),
										('Svetlana', 32);
                            
insert into Competencies (title) values ('Math'),
										('Informatics'),
										('Programming'),
										('Graphics');
                                
insert into Teachers2Competencies (teacher_id, competencies_id) values (1, 1),
																		(2, 1),
																		(2, 3),
																		(3, 2),
																		(4, 1),
																		(4, 3);
                                         
insert into Courses (teacher_id, title, headman_id) values (1, 'Агбера логики', 2),
															(2, 'Мат статистика', 3),
                                                            (4, 'Высшая математика', 5),
                                                            (5, 'Javascript', 1),
                                                            (5, 'Base Python', 1);
                                                            
insert into Students2Courses (student_id, course_id) values (1, 1),
															(2, 1),
                                                            (3, 2),
                                                            (3, 3),
                                                            (4, 5);









