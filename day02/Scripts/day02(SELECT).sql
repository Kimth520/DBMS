--1번 select

--select : 테이블에서 데이터를 조회할 때 사용하는 명령어
--hr 계정 내에 존재하는 employees 테이블
--107행 , 11개의 컬럼(열)으로 이루어져 있다
--107명의 직원 데이터를 저장해 놓은 연습용 테이블

--SELECT 컬렴명 from 테이블명;
--해당 테이블에서 특정 컬럼을 선택해서 조회하겠다는 의미 
SELECT first_name FROM hr.EMPLOYEES;
SELECT first_name FROM EMPLOYEES;

--HR 게정을 적성하는 이유는 여러 계정에 같은 이름의 테이블이름이 존재할 수 있기 떄문이다
--지금 로그인한 계정의 테이블의 우선순위가 높기 때문에 일반덕으로 계쩡명을 생략이 가능하다

SELECT  * FROM  EMPLOYEES;
--아래 두개의 결과는 다르다(select뒤에 작성된 컬럼명 대로 Result 테이블에 표시된다)
SELECT  FIRST_name, LAST_name
FROM EMPLOYEES;
SELECT  LAST_name, FIRST_name
FROM EMPLOYEES;

--사원의 이름(first_name), 성 (last_name), 급여(SALARY)를 조회
SELECT first_name, last_name, salary
FROM EMPLOYEES;

--정렬해서 조회하기
--order by절
--사원의 이름, 성, 급여를 급여 낮은 순서부터 조회
SELECT first_name, last_name, salary--2) 이 세 칼럼을 조회
FROM EMPLOYEES --1) employees 테이블에서
ORDER BY salary ASC;--3) salary 의 오름차순으로 정렬해서
--ASC : 오름차순(ascending) 앞글자 3글자만 따서 asc로 사용

--DESC : 내림차순(descending) 앞글자 4글자를 따서 Desc로 사용
SELECT first_name, last_name, salary
FROM EMPLOYEES 
ORDER BY salary DESC;

--문자의 정렬(first_name) : asc는 a부터z 순으로 정렬
SELECT first_name
FROM EMPLOYEES 
ORDER BY first_name ASC;

--날짜의 정렬(hire_date) : asc는 예전 날짜부터 최신 날짜 순으로 정렬
SELECT  hire_date
FROM EMPLOYEES 
ORDER BY hire_date ASC;

--ORDER BY 절에서 오름차순 ASC나 내림차순 DESC를 생략하면 오름차순으로 정렬

SELECT * FROM EMPLOYEES ;

--ORDER BY 정의 컬럼명은 조회하는 컬럼명과 반드시 일치하지 않아도 가능하다(해당 테이블에 있는 컬럼이라면)
--2개의 정렬기준도 가능하다(첫번째 작성한 컬럼의 값을 기준을 잡아 정렬하고 해당 컬럼의 값이 동일하다면 2차적으로 그다음 컬럼값을 기준을 정렬한다)
SELECT first_name, salary
FROM EMPLOYEES 
ORDER BY first_name ASC, SALARY ASC ;--ASC 생략 가능

--사원 테이블에서 직급(JOB_ID) 조회하기
SELECT JOB_ID 
FROM  EMPLOYEES;

--직급의 종류를 확인하기 위해 중복 행을 제거
--DISTINCT 해당 컬럼에서 중복되는 값을 제외시킨다
SELECT  DISTINCT JOB_ID 
FROM EMPLOYEES;

--칼럼을 여러개 넣으면 DISTINCT는 어떻게 작동할까?
--여러 칼럼을 동시에 작성할 경우, 두개의 칼럼이 모두 중복되는 경우에만 중복 처리(중복을 제거)
SELECT DISTINCT job_id, hire_date
FROM EMPLOYEES;

--별칭 붙여 조회하기 as
SELECT first_name AS "이름", last_name  AS "성", salary AS "봉급", employee_id AS "사원 번호"
FROM EMPLOYEES;

--AS 키워드 생략 가능
--"" 생략 가능 (단! 별칭에 띄어쓰기가 있으면 ""생략 불가능)
SELECT first_name "이름1", last_name "성", salary "봉급", employee_id "사원 번호"
FROM EMPLOYEES;


--사원의 이름(first_name), 성(last_name), 봉급을 조회하는데 봉급 내림차순으로 별침사용하여 조회하기
--쿼리문 작성시 순사 1) 조회할 컬럼 생각 -> 별칭 부여 2 ) 테이블 생각 3) 정렬 생각
--쿼리문 실행 순서 FROM -> SELECT -> ORDER BY
SELECT  first_name 이름, last_name 성, salary 봉급
FROM EMPLOYEES 
ORDER BY salary DESC;
