--1번
SELECT first_name || ' ' || last_name 이름
FROM employees;

--2번
SELECT  first_name 이름, salary 급여
FROM EMPLOYEES;

--3번
SELECT EMPLOYEE_ID , FIRST_NAME ,SALARY 
FROM EMPLOYEES
WHERE salary >=5000;

--4번
SELECT  SYSDATE +10
FROM dual;

--5번
SELECT first_name || ' ' || last_name 이름, department_id 부서번호
FROM EMPLOYEES 
WHERE DEPARTMENT_ID =50;

--6번
SELECT *
FROM EMPLOYEES
WHERE LAST_NAME = 'King';

--7번
SELECT *
FROM EMPLOYEES 
WHERE SALARY IS NOT NULL;

--8번
SELECT DISTINCT job_id
FROM EMPLOYEES;

--9번
SELECT first_name, salary
FROM EMPLOYEES
WHERE salary >=3000 AND salary <7000;

--10번
SELECT first_name
FROM EMPLOYEES
WHERE first_name LIKE '___e%';

--11번
SELECT first_name, job_id
FROM EMPLOYEES
WHERE job_id = 'IT_PROG' OR job_id = 'SA_REP';

--12번
SELECT *
FROM EMPLOYEES
WHERE first_name LIKE 'A%';

--13번
SELECT first_name, salary
FROM EMPLOYEES 
WHERE salary >=10000 AND DEPARTMENT_ID =90;

--14번
SELECT first_name, salary
FROM EMPLOYEES 
WHERE salary <=5000 or DEPARTMENT_ID =30;

--15번
SELECT *
FROM EMPLOYEES 
WHERE LAST_NAME LIKE '_e%';

--16번
SELECT first_name, salary
FROM EMPLOYEES
ORDER BY salary DESC ;

--17번
SELECT salary * 1.1 BONUS
FROM EMPLOYEES;

--18번
SELECT salary, COMMISSION_PCT 
FROM EMPLOYEES
WHERE salary >=6000
ORDER BY salary DESC ,COMMISSION_PCT ASC ; 

--19번
SELECT first_name, salary
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%'AND salary >=10000;

--20번
SELECT first_name, salary, department_id
FROM EMPLOYEES
--WHERE salary >=10000 AND 
--	salary <=15000 AND 
--	(department_id = 80 OR department_id = 90);
WHERE salary BETWEEN 10000 AND 15000 AND 
	department_id IN (80, 90) ;

--21번
--SELECT hire_date + 365 '입사 1년 후'
--FROM EMPLOYEES;
