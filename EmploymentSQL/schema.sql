

CREATE TABLE departments (
dept_no VARCHAR(10) PRIMARY KEY,
dept_name VARCHAR);

CREATE TABLE titles (
title_id VARCHAR (4) PRIMARY KEY,
title TEXT NOT NULL);

CREATE TABLE employees(
emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
birth_date DATE NOT NULL,
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
sex VARCHAR (1) NOT NULL,
hire_Date DATE NOT NULL);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
    emp_no BIGINT NOT NULL,
    salary BIGINT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
				
