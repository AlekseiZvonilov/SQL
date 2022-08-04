--1. Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--2. Наполнить таблицу employee 70 строками. 

insert into employees (id,  employee_name)
values (default, 'Коновалова Алия'),
(default, 'Балашова Таисия'),
(default, 'Горячева Виктория'),
(default, 'Кулакова Алиса'),
(default, 'Агеев Артём'),
(default, 'Михеев Павел'),
(default, 'Александрова Ярослава'),
(default, 'Соловьев Александр'),
(default, 'Галкин Савва'),
(default, 'Беляева Юлия'),
(default, ('Парфенов Григорий'),
(default, ('Морозова Агния'),
(default, ('Кузнецов Тимофей'),
(default, ('Кондратов Даниил'),
(default, ('Самсонова Ева'),
(default, ('Виноградов Андрей'),
(default, ('Грачев Макар'),
(default, ('Григорьев Михаил'),
(default, ('Кошелев Дмитрий'),
(default, ('Новикова Татьяна'),
(default, ('Кондрашов Данила'),
(default, ('Медведев Пётр'),
(default, ('Антонова Анна'),
(default, ('Белов Дмитрий'),
(default, ('Карасев Вадим'),
(default, ('Суслов Илья'),
(default, ('Морозова Полина'),
(default, ('Смирнов Лев'),
(default, ('Троицкий Даниэль'),
(default, ('Киселева Мирослава'),
(default, ('Кузнецов Ярослав'),
(default, ('Дмитриев Всеволод'),
(default, ('Лебедев Матвей'),
(default, ('Громова Амира'),
(default, ('Власова Вера'),
(default, ('Савельева София'),
(default, ('Антонов Иван'),
(default, ('Лаптев Давид'),
(default, ('Васильев Артём'),
(default, ('Дорохова София'),
(default, ('Кузнецов Даниил'),
(default, ('Зыкова Елизавета'),
(default, ('Медведева Алёна'),
(default, ('Королев Кирилл'),
(default, ('Ушаков Савелий'),
(default, ('Кононов Егор'),
(default, ('Токарева Кристина'),
(default, ('Кириллов Дмитрий'),
(default, ('Поляков Николай'),
(default, ('Смирнов Артём'),
(default, ('Гаврилов Никита'),
(default, ('Белоусова Ярослава'),
(default, ('Соколова Валерия'),
(default, ('Васильев Егор'),
(default, ('Краснов Артём'),
(default, ('Сахаров Никита'),
(default, ('Михеев Богдан'),
(default, ('Петухов Илья'),
(default, ('Соловьева Валерия'),
(default, ('Шмелев Марк'),
(default, ('Меркулов Юрий'),
(default, ('Тихонов Дмитрий'),
(default, ('Демидов Александр'),
(default, ('Скворцова Айлин'),
(default, ('Маркова Мария'),
(default, ('Маркова Анастасия'),
(default, ('Озерова Ксения'),
(default, ('Жданова Вера'),
(default, ('Карасев Марк'),
(default, ('Осипов Роберт');


select * from employees;

--3.Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
id serial primary key,
monthly_salary int not null
);
select * from salary;

-- 4. Наполнить таблицу salary 15 строками

insert into salary (id, monthly_salary)
values (default, 1000),
		(default, 1100),
		(default, 1200),
		(default, 1300),
		(default, 1400),
		(default, 1500),
		(default, 1600),
		(default, 1700),
		(default, 1800),
		(default, 1900),
		(default, 2000),
		(default, 2100),
		(default, 2200),
		(default, 2300),
		(default, 2400);
	
	select * from salary;

--5.Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select * from employee_salary;

--6.Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(id, employee_id, salary_id)
values (default, 71, 1),
		(default, 72, 2),
		(default, 73, 3),
		(default, 74, 4),
		(default, 75, 5),
		(default, 76, 6),
		(default, 77, 7),
		(default, 78, 8),
		(default, 79, 9),
		(default, 80, 10),
		(default, 70, 11),
		(default, 69, 12),
		(default, 68, 13),
		(default, 67, 14),
		(default, 66, 15),
		(default, 65, 16),
		(default, 64, 1),
		(default, 63, 2),
		(default, 62, 3),
		(default, 61, 4),
		(default, 60, 5),
		(default, 59, 6),
		(default, 58, 7),
		(default, 57, 8),
		(default, 56, 9),
		(default, 55, 10),
		(default, 54, 11),
		(default, 53, 12),
		(default, 52, 13),
		(default, 51, 14),
		(default, 50, 15),
		(default, 49, 16),
		(default, 48, 1),
		(default, 47, 2),
		(default, 46, 3),
		(default, 45, 4),
		(default, 44, 5),
		(default, 43, 6),
		(default, 42, 7),
		(default, 41, 8);
	
	select *from employee_salary;

--7.Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);
select * from roles;

--8.Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30);

select * from roles;

--9. Наполнить таблицу roles 20 строками 

INSERT INTO roles (id, role_name)
VALUES  (default, 'Junior Python developer'),
		(default, 'Junior Java developer'),
		(default, 'Junior JavaScript developer'),
		(default, 'Junior Manual QA engineer'),
		(default, 'Junior Automation QA engineer'),
		(default, 'Sales manager'),
		(default, 'CEO'),
		(default, 'HR'),
		(default, 'Designer'),
		(default, 'Project Manager'),
		(default, 'Middle Python developer'),
		(default, 'Middle Java developer'),
		(default, 'Middle JavaScript developer'),
		(default, 'Middle Manual QA engineer'),
		(default, 'Middle Automation QA engineer'),
		(default, 'Senior Java developer'),
		(default, 'Senior JavaScript developer'),
		(default, 'Senior Manual QA engineer'),
		(default, 'Senior Automation QA engineer'),
		(default, 'Senior Python developer');

	SELECT * FROM roles;

--10. Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

CREATE TABLE roles_employee(
			id serial PRIMARY KEY,
			employee_id int NOT NULL UNIQUE,
			foreign KEY (employee_id)
			REFERENCES employees(id),
			role_id int NOT NULL,
			foregin KEY (role_id)
			REFERENCES roles(id)
);	

SELECT * FROM roles_employee;

--11. Наполнить таблицу roles_employee 40 строками

INSERT INTO roles_employee (id, employee_id, role_id)
VALUES  (default, 40, 1),
		(default, 39, 2),
		(default, 38, 3),
		(default, 37, 4),
		(default, 36, 5),
		(default, 35, 6),
		(default, 34, 7),
		(default, 33, 8),
		(default, 32, 9),
		(default, 31, 10),
		(default, 30, 11),
		(default, 29, 12),
		(default, 28, 13),
		(default, 27, 14),
		(default, 26, 15),
		(default, 25, 16),
		(default, 24, 17),
		(default, 23, 18),
		(default, 22, 19),
		(default, 21, 20),
		(default, 20, 1),
		(default, 19, 2),
		(default, 18, 3),
		(default, 17, 4),
		(default, 16, 5),
		(default, 15, 6),
		(default, 14, 7),
		(default, 13, 8),
		(default, 12, 9),
		(default, 11, 10),
		(default, 10, 11),
		(default, 9, 12),
		(default, 8, 13),
		(default, 7, 14),
		(default, 6, 16),
		(default, 5, 17),
		(default, 4, 18),
		(default, 3, 19),
		(default, 2, 20);
		
select * from roles_employee;

