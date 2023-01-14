create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees (employee_name)
	values 
	('Mirilla Millis'),
   ('George Silber'),
   ('Giacobo Cabral'),
   ('Hugibert Easterfield'),
   ('Normy O''Connor'),
   ('Tan Southall'),
   ('Marietta Hawler'),
   ('Sallee Chavey'),
   ('Engracia Barbour'),
   ('Stinky Canti'),
   ('Millie Gregorio'),
   ('Horace Gatherer'),
   ('Mareah Clayfield'),
   ('Corie Derisley'),
   ('Spike Calway'),
   ('Aimil Tidd'),
   ('Codie Cockayne'),
   ('Davita Greenaway'),
   ('Syd D''Ruel'),
   ('Freida Roisen'),
   ('Andee Tolchar'),
   ('Sawyere Pardue'),
   ('Neils Peet'),
   ('Rosabelle Grono'),
   ('De Pursey'),
   ('Ethyl Prantl'),
   ('Ogdan Wimes'),
   ('Amery Backler'),
   ('Odille Brumble'),
   ('Star Bowart'),
   ('Lauren Olesen'),
   ('Amandy Bourne'),
   ('Vale McCraw'),
   ('Mead Roscow'),
   ('Erda Matiebe'),
   ('Van Fenlon'),
   ('Siouxie Giurio'),
   ('Staci Yetton'),
   ('Cindelyn Gowanlock'),
   ('Sheffie Noice'),
   ('Maureen Prugel'),
   ('Karolina Sarre'),
   ('Devland Teanby'),
   ('Chas Brownell'),
   ('Town Schoroder'),
   ('Torr Ettritch'),
   ('Elfrieda Keasy'),
   ('Elka Wain'),
   ('Gery Buye'),
   ('Esteban Harsnipe'),
   ('Cy Rossi'),
   ('Michelina Insko'),
   ('Noland Drains'),
   ('Laureen McGregor'),
   ('Sander Candey'),
   ('Robyn Durdle'),
   ('Alphonso Soughton'),
   ('Hale Routledge'),
   ('Ashlen Briatt'),
   ('Abbi Fleury'),
   ('Frazier Kinforth'),
   ('Natalee Kennelly'),
   ('Latashia Carillo'),
   ('Verge Ivashchenko'),
   ('Lynelle Tippler'),
   ('Alexis Loudwell'),
   ('Pebrook Corteis'),
   ('Reinaldo Shurey'),
   ('Buddy Kinnen'),
   ('Andras Tirrey');
	
select * from employees;

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary (monthly_salary)
	values 
	(1000),
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
select * from salary;

create table employee_salary (
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

alter table employee_salary
	add foreign key (employee_id)
		references employees (id),
	add foreign key (salary_id)
		references salary (id);
	
	drop table employee_salary;

	insert into employee_salary (employee_id, salary_id)
	values  (1, 15),
			(5, 10),
			(3, 8),
			(2, 1),
			(4, 2),
			(6, 6),
			(7, 16),
			(10, 8),
			(16, 7),
			(54, 6),
			(36, 13),
			(58, 14),
			(29, 3),
			(44, 10),
			(61, 7),
			(15, 9),
			(9, 16),
			(60, 12),
			(38, 5),
			(30, 8),
			(48, 2),
			(19, 7),
			(42, 11),
			(17, 14),
			(47, 6),
			(69, 16),
			(64, 15),
			(22, 1),
			(27, 8),
			(35, 5),
			(51, 9),
			(59, 10);
			(71, 13),
			(72, 10),
			(73, 6),
			(74, 8),
			(75, 4),
			(76, 9),
			(77, 11),
			(78, 4),
			(79, 7),
			(80, 1);
			
select * from employee_salary;

create table roles (
	id serial primary key,
	role_name int unique not null
);

alter table roles
	alter column role_name type varchar(30);

insert into roles (role_name)
	values 
	('Junior Python developer'),
  ('Middle Python developer'),
  ('Senior Python developer'),
  ('Junior Java developer'),
  ('Middle Java developer'),
  ('Senior Java developer'),
  ('Junior JavaScript developer'),
  ('Middle JavaScript developer'),
  ('Senior JavaScript developer'),
  ('Junior Manual QA engineer'),
  ('Middle Manual QA engineer'),
  ('Senior Manual QA engineer'),
  ('Project Manager'),
  ('Designer'),
  ('HR'),
  ('CEO'),
  ('Sales manager'),
  ('Junior Automation QA engineer'),
  ('Middle Automation QA engineer'),
  ('Senior Automation QA engineer');

select * from roles;

create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

insert into roles_employee (employee_id, role_id)
	values (10, 1),
			(14, 3),
			(8, 6),
			(31, 18),
			(1, 1),
			(43, 13),
			(52, 16),
			(63, 10),
			(4, 5),
			(33, 4),
			(66, 20),
			(36, 2),
			(7, 9),
			(55, 11),
			(69, 15),
			(38, 6),
			(54, 19),
			(3, 17),
			(40, 8),
			(32, 1),
			(20, 3),
			(59, 14),
			(27, 9),
			(58, 15),
			(61, 5),
			(44, 4),
			(11, 18),
			(12, 12),
			(51, 13),
			(15, 1),
			(42, 6),
			(65, 20),
			(2, 5),
			(9, 7),
			(13, 11),
			(21, 10),
			(37, 17),
			(5, 13),
			(48, 12),
			(50, 19),
			(49, 18);
			
select * from roles_employee;






