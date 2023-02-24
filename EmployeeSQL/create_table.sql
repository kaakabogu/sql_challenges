--- Create titles table
CREATE TABLE Titles(
	title_id VARCHAR(255) NOT NULL UNIQUE,
	PRIMARY KEY(title_id),
	title VARCHAR(255));
	
SELECT*FROM TITLES;

--- Create Employees table
CREATE TABLE Employees(
	emp_no INT NOT NULL UNIQUE,
	PRIMARY KEY(emp_no),
	emp_title_id VARCHAR(255), 
	FOREIGN KEY (emp_title_id) references Titles(title_id),
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(255),
	hire_date DATE);
	
SELECT * FROM EMPLOYEES;
	
--- Create departments table
CREATE TABLE departments(
	dept_no VARCHAR(255) NOT NULL UNIQUE,
	PRIMARY KEY (dept_no),
	dept_name VARCHAR(255));

SELECT*FROM departments;

--- Create dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY(dept_no) references Departments(dept_no),
	emp_no INT NOT NULL UNIQUE,
	FOREIGN KEY(emp_no)references Employees(emp_no));

SELECT*FROM dept_manager;
	
--- Create Salaries table
CREATE TABLE salaries(
    emp_no  INT  NOT NULL UNIQUE,
    salary  INT  NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
SELECT * FROM SALARIES;

--- Create dept_emp table
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(255)NOT NULL,
	PRIMARY KEY(emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

SELECT*FROM dept_emp;
	
