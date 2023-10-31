-- exercise 1

SELECT first_name, last_name
FROM teachers
ORDER BY last_name ASC;

-- exercise 2
SELECT first_name, last_name, salary
FROM teachers
WHERE first_name ILIKE 's%'
AND salary > 40000

--exercise 3

SELECT first_name, last_name, hire_date, salary
FROM teachers
WHERE hire_date > = '2010-01-01'
ORDER BY salary DESC;
