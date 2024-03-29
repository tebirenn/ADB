# Alan Saudabekov 20B030768

INSERT INTO employees(employee_id, full_name, email, phone_number, hire_date, job_id, salary)
VALUES (100, 'Steven King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', 24000),
    (101, 'Neena Kochhar', 'NKOCHAR', '515.123.4568', '1989-09-21', 'AD_VP', 17000),
    (102, 'Lex DeHaan', 'LDEHAA', '515.123.4569', '1993-03-13', 'AD_VP', 17000),
    (103, 'Alexander Hunold', 'AHUNOLD', '590.423.4567', '1990-01-03', 'IT_PROG', 9000),
    (104, 'Bruce Ernst', 'BENST', '590.423.4568', '1991-05-21', 'IT_PROG', 6000),
    (107, 'Diana Lorentz', 'DLORENTZ', '590.423.5565', '1999-02-07', 'IT_PROG', 4000),
    (124, 'Kevin Mourgos', 'KNOURGOS', '650.123.5234', '1999-11-16', 'SH_MAN', 5800),
    (141, 'Trenna Rajs', 'TRAJS', '650.121.8009', '1995-10-17', 'SH_CLERK', 3500),
    (142, 'Curtis Davies', 'CDAVIES', '650.121.2996', '1997-01-29', 'SH_CLERK', 3100),
    (143, 'Randall Matos', 'RMATOS', '650.121.2874', '1998-03-15', 'SH_CLERK', 2600),
    (144, 'Peter Vargas', 'PVARGAS', '650.121.2004', '1998-07-09', 'SH_CLERK', 2500),
    (149, 'Eleni Zlotkey', 'EZLOTKEY', '011.44.1344.4290', '2000-01-10', 'SA_MAN', 7000),
    (174, 'Ellen Abel', 'ABELL', '011.44.1644.4292', '1996-05-11', 'SA_REP', 11000),
    (176, 'Jonathon Taylor', 'JTAILOR', '011.44.1644.4292', '1998-03-24', 'SA_REP', 8600),
    (178, 'Kimberely Grant', 'KGRANT', '011.44.1644.4292', '1999-05-24', 'SA_REP', 7000),
    (200, 'Jennifer Whalen', 'JWHALEN', '515.123.4444', '1987-09-17', 'AD_ASST', 4000),
    (201, 'Michael Hartstein', 'MHARTSTE', '515.123.5555', '1996-02-17', 'MK_MAN', 13000),
    (202, 'Pat Fay', 'PFAY', '603.123.6666', '1997-08-17', 'MK_REP', 6000),
    (205, 'Shelley Higgins', 'SHIGGINS', '515.123.8080', '1994-06-07', 'AC_MGR', 12000),
    (206, 'William Gietz', 'WGIETZ', '515.123.8181', '1994-06-07', 'AC_ACCOUNT', 8300);

INSERT INTO departments(department_id, department_name, manager_id, location_id)
VALUES (10, 'Administration', 200, 1700),
    (20, 'Marketing', 201, 1800),
    (50, 'Shipping', 124, 1500),
    (60, 'IT', 103, 1400),
    (80, 'Sales', 149, 2500),
    (90, 'Executive', 100, 1700),
    (110, 'Accounting', 205, 1700),
    (190, 'Contracting', 170, 1700);

INSERT INTO job_grades (grade, lowest_salary, highest_salary)
VALUES ('A', 1000, 2999),
    ('B', 3000, 5999),
    ('C', 6000, 9999),
    ('D', 10000, 14999),
    ('E', 15000, 24999),
    ('F', 25000, 40000);