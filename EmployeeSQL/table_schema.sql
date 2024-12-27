/*DATA ENGINEERING
CREATING TABLES FOR THE CSV FILES AND IMPORTING DATA INTO THE RESPECTIVE TABLES.
*/

--Creating table for 'departments'
create table departments
(
		dept_no varchar(06) primary key,
		dept_name varchar(50) not null
);

--display departments table
select * from departments;



--creating table for salaries
create table salaries
(
		emp_no integer primary key,
		salary integer not null
);

--display salaries table
select * from salaries;



--creating table for titles
create table titles
(
		title_id varchar(7) primary key,
		title text not null
);

--display titles table
select * from titles;



--creating table for employees
create table employees
(
		emp_no integer primary key,
		emp_title_id varchar(7) not null,
		birth_date date not null,
		first_name varchar(50) not null,
		last_name varchar(50) not null,
		sex char(1) not null,
		hire_date date not null,
		foreign key (emp_title_id) references titles(title_id)
);

--display employees table
select * from employees;



--Creating table for 'dept_emp'
create table dept_emp
(
	emp_no integer not null,
	dept_no varchar(06) not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references salaries(emp_no),
	foreign key (emp_no) references employees(emp_no)
);

--display dept_emp table
select * from dept_emp;



--creating table for dept_manager
create table dept_manager
(
		dept_no varchar(6) not null,
		emp_no integer not null,
		foreign key (dept_no) references departments(dept_no),
		foreign key (emp_no) references employees(emp_no)
);

--display dept_manager table
select * from dept_manager;





