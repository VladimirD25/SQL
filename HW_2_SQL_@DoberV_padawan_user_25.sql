create table employees (
id serial primary key,
employee_name varchar (50) not null
);

insert into employees (employee_name)
values  ('Anna'),
		('Abigail'),
		('Andrew'),
		('Adam'),
		('Ashley'),
		('Antony'),
		('Anton'),
		('Antonio'),
		('Armin'),
		('Bill'),
		('Bonny'),
		('Barbara'),
		('Buxter'),
		('Butch'),
		('Boris'),
		('Bianka'),
		('Cler'),
		('Clea'),
		('Calvin'),
		('Corry'),
		('Carl'),
		('Carly'),
		('Dominic'),
		('Donald'),
		('Dmitry'),
		('Danilo'),
		('Danny'),
		('Donny'),
		('Dexter'),
		('Darvin'),
		('Desmond'),
		('Dillon'),
		('Elena'),
		('Elen'),
		('Elsa'),
		('Ezio'),
		('Ford'),
		('Guy'),
		('Gwen'),
		('Gavin'),
		('Gal'),
		('Gvendoline'),
		('Harry'),
		('Harmony'),
		('Hoakin'),
		('Hanna'),
		('Henry'),
		('Hillary'),
		('Hamphri'),
		('Hutch'),
		('Ira'),
		('Illary'),
		('Ian'),
		('Ivan'),
		('Ihor'),
		('Irma'),
		('Inga'),
		('Inna'),
		('Ibrahim'),
		('Ivor'),
		('Irma'),
		('Jarvis'),
		('Jynx'),
		('Jody'),
		('Jhonn'),
		('Kerry'),
		('Klive'),
		('Kelvine'),
		('Kate'),
		('Katarina');
		
create table salary (
id serial primary key,
monthly_salary int not null);

insert into salary (monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
create table  employees_salary (
	id serial primary key,
	employee_id int not null unique,           
	salary_id int not null         
); 
	
insert into employees_salary (employee_id, salary_id)
values (1,1),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7),
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16),
	   (17,1),
	   (18,2),
	   (19,3),
	   (20,4),
	   (21,5),
	   (22,6),
	   (23,7),
	   (24,8),
	   (25,9),
	   (26,10),
	   (27,11),
	   (28,12),
	   (29,13),
	   (30,14),
	   (71,15),
	   (72,16),
	   (73,1),
	   (74,2),
	   (75,3),
	   (76,4),
	   (77,5),
	   (78,6),
	   (79,7),
	   (80,8);
	
create table roles (
	id serial primary key,
	role_name int not null unique           
); 	

alter table roles
alter column role_name type varchar (30);

insert into roles (role_name)
values  ('Junior_Python_developer'),
		('Middle_Python_developer'),
		('Senior_Python_developer'),
		('Junior_Java_developer'),
		('Middle_Java_developer'),
		('Senior_Java_developer'),
		('Junior_JavaScript_developer'),
		('Middle_JavaScript_developer'),
		('Senior_JavaScript_developer'),
		('Junior_Manual_QA_engineer'),
		('Middle_Manual_QA_engineer'),
		('Senior_Manual_QA_engineer'),
		('Project_Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales_manager'),
		('Junior_Automation_QA_engineer'),
		('Middle_Automation_QA_engineer'),
		('Senior_Automation_QA_engineer');
	
create table roles_employees (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);	
	
insert into roles_employees (employee_id, role_id)
values (1,1),
	   (2,1),
	   (3,2),
	   (4,2),
	   (5,3),
	   (6,4),
	   (7,4),
	   (8,5),
	   (9,5),
	   (10,6),
	   (11,7),
	   (12,7),
	   (13,8),
	   (14,8),
	   (15,9),
	   (16,10),
	   (17,10),
	   (18,11),
	   (19,11),
	   (20,12),
	   (21,13),
	   (22,13),
	   (23,13),
	   (24,13),
	   (25,14),
	   (26,14),
	   (27,14),
	   (28,14),
	   (29,18),
	   (30,18),
	   (31,18),
	   (32,18),
	   (33,19),
	   (34,19),
	   (35,19),
	   (36,20),
	   (37,15),
	   (38,15),
	   (39,17),
	   (40,16);

select * from employees;	
select * from salary;
select * from employees_salary;

select * from roles;
select * from roles_employees;
	
drop table roles_employees;
	
	
	
	