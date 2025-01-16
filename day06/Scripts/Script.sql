-- 계정명 : test01
-- 비밀번호 : 1234

-- 계정 만들고 a1~a4 테이블 등록 후 문제 풀기

/* 1. JOBS 테이블에서 JOB_ID로 직원들의 JOB_TITLE, EMAIL, 성, 이름 조회 */
SELECT * FROM JOBS;
SELECT count(*) FROM JOBS;
SELECT * FROM EMPLOYEES;
SELECT count(*) FROM EMPLOYEES;

SELECT j.job_title, A.email, A.first_name, A.last_name
FROM  JOBS j JOIN employees A  
ON a.JOB_ID = j.JOB_ID ;

/* 2. EMPLOYEES 테이블에서 HIREDATE가 2003~2004년까지인 사원의 정보와 부서명 검색 */
SELECT e.FIRST_NAME || e.LAST_NAME 이름 , e.HIRE_DATE 입사일, d.DEPARTMENT_NAME 부서명 
FROM DEPARTMENTS d JOIN EMPLOYEES e 
ON d.DEPARTMENT_ID = e.DEPARTMENT_ID AND HIRE_DATE BETWEEN '2000-01-01' AND '2004-12-31';


/* 3. EMP 테이블에서 ENAME에 L이 있는 사원들의 DNAME과 LOC 검색 */
SELECT * FROM EMP e ;
SELECT * FROM DEPT d ;

SELECT e.ename, d.dname, d.loc
FROM dept d JOIN emp E
ON e.DEPTNO = d.DEPTNO AND e.ename LIKE '%L%';


/* 4. SCHEDULE 테이블에서 경기 일정이 20120501 ~ 20120502 사이에 있는 경기장 전체 정보 조회 */
SELECT * FROM SCHEDULE s ;
SELECT * FROM STADIUM s2; 

SELECT *
FROM STADIUM s2 JOIN SCHEDULE s
ON s.STADIUM_ID  = s2.STADIUM_ID AND s.SCHE_DATE BETWEEN '20120501' AND '20120502';


/* 5. 축구 선수들 중에서 각 팀 별로 키가 가장 큰 선수들의 전체 정보 조회 */
/* 위 문제를 JOIN없이 풀기
 * (A,B) IN (C, D) : A = C AND B = D */
SELECT * FROM PLAYER p 
WHERE (TEAM_ID, HEIGHT) IN (SELECT TEAM_ID, MAX(HEIGHT) FROM PLAYER p2 GROUP BY TEAM_ID);


/* 6. EMP 테이블의 SAL을 이용, SALGRAED 테이블을 참고하여 모든 사원의 정보를 GRADE를 포함하여 조회 */
SELECT * FROM emp;
SELECT * FROM SALGRADE s;
	
SELECT * FROM EMP e JOIN SALGRADE s 
ON e.sal >= s.losal AND e.sal <=s.HISAL;

SELECT * FROM EMP e JOIN SALGRADE s 
ON E.SAL BETWEEN S.LOSAL AND S.HISAL;

/* 7. EMP 테이블에서 각 사원의 매니저 이름 조회 */
-- mgr이 메니저 번호/ 셀프 조인
SELECT * FROM EMP;

SELECT e1.empno 사원번호, e1.ename 사원이름, e2.ename 매니저이름, e1.mgr 매니저번호
FROM emp e1 JOIN emp e2 
ON e1.mgr = e2.EMPNO;

/* 8. 축구 선수들 중에서 각 팀 별로 키가 가장 큰 선수들의 전체 정보 조회 */
SELECT * FROM PLAYER p;
SELECT * FROM TEAM t ;

-- 팀별로 그룹화 후 팀의 가장 큰 키를 찾기
SELECT TEAM_ID, MAX(HEIGHT)
FROM PLAYER p
GROUP BY TEAM_ID;

-- HEIGHT, TEAM_ID가 일치하는 조건으로 PLAYER 테이블과  JOIN
SELECT  * 
FROM (SELECT TEAM_ID, MAX(HEIGHT) HEIGHT
FROM PLAYER
GROUP BY TEAM_ID) P1 JOIN PLAYER P2 
ON P1.TEAM_ID = P2.TEAM_ID AND P1.HEIGHT = P2.HEIGHT;



SELECT t.TEAM_NAME, p.PLAYER_NAME, p.HEIGHT
FROM TEAM t JOIN PLAYER p ON t.TEAM_ID = p.TEAM_ID
JOIN (SELECT TEAM_ID, MAX(HEIGHT) m FROM PLAYER GROUP BY TEAM_ID) p2
ON p.TEAM_ID = p2.TEAM_ID AND p.HEIGHT = p2.m;



