-- Table Schema -- 

--Drop any existing tables
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
-- 

--Define Tables--
--Including foreign keys
--Data imported from CSV files--
CREATE TABLE "departments"(
	"dept_no" VARCHAR primary key NOT NULL,
	"dept_name" VARCHAR NOT NULL	
);

CREATE TABLE "dept_emp"(
	"emp_no" INT,
	"dept_no" VARCHAR NOT NULL,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

CREATE TABLE "dept_manager"(
	"dept_no" VARCHAR NOT NULL,
	"emp_no" INT,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE "employees"(
	"emp_no" INT primary key,
	"emp_title_id" VARCHAR NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"sex" VARCHAR NOT NULL,
	"hire_date" DATE NOT NULL,
	foreign key (emp_title_id) references titles(title_id)
); 

CREATE TABLE "salaries"(
	"emp_no" INT,
	"salary" INT,
	foreign key (emp_no) references employees(emp_no)
); 

CREATE TABLE "titles"(
	"title_id" VARCHAR primary key NOT NULL,
	"title" VARCHAR NOT NULL
);

--QUERY Each Table To Confirm Accuracy-- 
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	