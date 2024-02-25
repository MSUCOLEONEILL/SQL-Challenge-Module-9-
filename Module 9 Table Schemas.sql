CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40)
);

CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no CHAR(4)
);

CREATE TABLE dept_manager (
    dept_no CHAR(4),
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);

CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER,
    CONSTRAINT fk_emp_no FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(50)
);

