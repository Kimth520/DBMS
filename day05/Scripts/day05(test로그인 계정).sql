SELECT * FROM user_tab_privs_recd;

INSERT INTO hr.EMPLOYEES(EMPLOYEE_ID, FIRST_NAME)
calues(100, 'dddd');

CREATE TABLE tbl_member(
	mem_id NUMBER PRIMARY KEY,
	mem_name varchar2(100)
);

--세션 생성 권한
GRANT CREATE SESSION TO 계정명;
--테이블/뷰/사용자 생성 권한
GRANT CREATE TABLE/CREATE VIEW/CREATE USER TO 계정명;
--특정 권한만 부여
GRANT SELECT ON 계정명.테이블명 TO 계정명;


