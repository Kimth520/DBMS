--sql 주석(ctrl + /)
--주석 처리된 sql문은 실행되지 않는다
--한줄 주석 -- : 해당 라인 줄을 주석 처리
/* 범위 주석 (ctrl + shift + /)
* 범위 아넹 있는 라인을 주석처리
*/

--실행 단축키 : ctrl + enter
--select를 사용하여 employees 테이블의 모든 컬럼 조회하기
SELECT * FROM hr.employees;
--select를 사용하여 employees 테이블의 first_name 컬럼만 선택하여 조회하기
SELECT first_name FROM hr.employees;
--hr 계정으로 로그인했기 때문에 hr을 생략가능

--select를 사용하여 employees 테이블의 first_name 컬럼만 선택하여 조회하기
--select를 사용하여 employees 테이블의 first_name 컬럼만 선택하여 조회하기

--; 세미콜론 : 세미콜론은 하나의 명령이 끝나면 작성한다(마침표라고 생각하면 된다)
-- 세미콜론을 적어야 한 줄의 끝이라고 생각하기 때문에 세미콜론 이전에 줄바꿈해도 상관없다
-- SQL문은 대소문자를 구분하지 않는다
