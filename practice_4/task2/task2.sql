CREATE TABLE employee (
    emp_no INT PRIMARY KEY,
    first_name VARCHAR(255),
    middle_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE project (
    project_no INT PRIMARY KEY,
    project_name VARCHAR(255)
);

CREATE TABLE employee_project (
    emp_no INT,
    project_no INT,
    FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
    FOREIGN KEY (project_no) REFERENCES project(project_no),
    PRIMARY KEY (emp_no, project_no)
);
# Так как отножение таблиц Many-to-Many потребовалось доп. таблица