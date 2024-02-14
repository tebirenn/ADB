# Alan Saudabekov 20B030768

## ------ TASK 1 ------ ##
SELECT employee_id, full_name, hire_date, salary
FROM employees;



## ------ TASK 2 ------ ##
SELECT employee_id, full_name, hire_date, (salary * 12) AS annual_salary
FROM employees;



## ------ TASK 3 ------ ##
SELECT DISTINCT job_id
FROM employees;



## ------ TASK 4 ------ ##
SELECT *
FROM employees
WHERE job_id = 'IT_PROG' AND salary >= 5000;



## ------ TASK 5 ------ ##
SELECT employee_id, full_name, job_id
FROM employees
WHERE salary BETWEEN 4000 AND 7000;



## ------ TASK 6 ------ ##
SELECT full_name, salary
FROM employees
WHERE salary NOT BETWEEN 3000 AND 9000;



## ------ TASK 7 ------ ##
SELECT employee_id, full_name, salary * 12 AS annual_salary
FROM employees
WHERE salary * 12 < 50000;



## ------ TASK 8 ------ ##
SELECT employee_id, full_name, salary
FROM employees
WHERE salary > 4000 AND salary < 7000;
# Difference task8 that we don't use BETWEEN query, We use two comparison with > and <



## ------ TASK 9 ------ ##
SELECT employee_id, full_name, salary, job_id
FROM employees
WHERE employee_id IN (144, 102, 200, 205);



## ------ TASK 10 ------ ##
SELECT employee_id, full_name, salary, job_id
FROM employees
WHERE employee_id NOT IN (144, 102, 200, 205);



## ------ TASK 11 ------ ##
SELECT employee_id, full_name, salary
FROM employees
WHERE full_name REGEXP '^[A-Za-z]+ [A-Za-z][Aa][A-Za-z]*$';



## ------ TASK 12 ------ ##
SELECT employee_id, full_name, salary
FROM employees
WHERE full_name REGEXP '^[A-Za-z]{2}[Aa]';



## ------ TASK 13 ------ ##
SELECT employee_id, full_name, email, salary
FROM employees
WHERE CONCAT(
        UPPER(REGEXP_SUBSTR(full_name, '^[A-Za-z]')),
        UPPER(REGEXP_SUBSTR(full_name, '[A-Za-z]+$'))
      ) = email;



## ------ TASK 14 ------ ##
SELECT employee_id, full_name, email, salary
FROM employees
ORDER BY salary, hire_date DESC;



## ------ TASK 15 ------ ##
SELECT employee_id, full_name, salary
FROM employees
ORDER BY employee_id DESC;



## ------ TASK 16 ------ ##
SELECT AVG(salary), MAX(salary), MIN(salary), SUM(salary)
FROM employees
WHERE job_id = 'IT_PROG';



## ------ TASK 17 ------ ##
SELECT *
FROM employees
WHERE SUBSTRING(phone_number, 1, 1) = SUBSTRING(phone_number, -1, 1);



## ------ TASK 18 ------ ##
SELECT COUNT(DISTINCT job_id)
FROM employees;



## ------ TASK 19 ------ ##
SELECT job_id, SUM(salary) AS sum_job_salary
FROM employees
GROUP BY job_id;



## ------ TASK 20 ------ ##
SELECT job_id, AVG(salary) AS avg_job_salary
FROM employees
GROUP BY job_id;



## ------ TASK 21 ------ ##
SELECT job_id, MAX(salary)
FROM employees
GROUP BY job_id
HAVING MAX(salary) > 10000
ORDER BY MAX(salary) DESC;



## ------ TASK 22 ------ ##
SELECT MAX(avg_salary) AS max_avg_salary
FROM (
    SELECT job_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY job_id
) AS avg_salaries;



## ------ TASK 23 ------ ##
SELECT full_name, salary AS salary_per_month, salary*3 AS dream_salary
FROM employees;



## ------ TASK 24 ------ ##
SELECT full_name, LENGTH(full_name) AS number_of_letters
FROM employees;



## ------ TASK 25 ------ ##
SELECT SUBSTRING_INDEX(full_name, ' ', 1) AS first_name
FROM employees;



## ------ TASK 26 ------ ##
SELECT LEFT(SUBSTRING_INDEX(full_name, ' ', 1), 3) AS first_name_3
FROM employees;



## ------ TASK 27 ------ ##
SELECT REVERSE(full_name) AS reversed_full_name
FROM employees;



## ------ TASK 28 ------ ##
SELECT REPLACE(full_name, 'en', 'yu') AS changed_full_name
FROM employees;



## ------ TASK 29 ------ ##
SELECT UPPER(full_name) AS upper_full_name
FROM employees;



## ------ TASK 30 ------ ##
SELECT *,
       CURDATE() AS date_now,
       TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS years_of_service
FROM employees;

# This query calculating employee's years of service by function time stamp different
# First argument is in witch system display difference, after 2 dates
