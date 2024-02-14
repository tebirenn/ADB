# Alan Saudabekov 20B030768

CREATE TABLE employees(
    employee_id int PRIMARY KEY,
    full_name varchar(150) NOT NULL,
    email varchar(150) NOT NULL,
    phone_number varchar(50) NOT NULL,
    hire_date date NOT NULL,
    job_id varchar(20) NOT NULL,
    salary double NOT NULL
);

CREATE TABLE departments(
    department_id int PRIMARY KEY,
    department_name varchar(100) NOT NULL,
    manager_id int NOT NULL,
    location_id int NOT NULL
);

CREATE TABLE job_grades(
    gra character NOT NULL,
    lowest_salary double NOT NULL,
    highest_salary double NOT NULL
);