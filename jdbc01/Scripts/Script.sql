CREATE SEQUENCE seq_user;

--사용자 정보 저장하는 유저 테이블 tbl_user
--사용자 번호
--아이디
--패스워드
--이름 
--나이
--성별
--생일
CREATE TABLE tbl_user(
	user_number NUMBER,
	user_id varchar2(100),
	user_pw varchar2(100),
	user_name varchar2(10),
	user_age NUMBER,
	user_gender char(1) DEFAULT 'M',
	user_birth DATE,
	CONSTRAINT pk_user PRIMARY key(user_number)
);

SELECT *from tbl_user;

INSERT INTO tbl_user
--values(seq_user.nextVal, 'aaa', '1234', '홍길동', 22, 'M', '20001010');
--values(seq_user.nextVal, 'bbb', '1234', '김영선', 20, 'W', '20001011');

SELECT user_number form tbl_user WHERE USER_id = 'aaa';

SELECT * FROM Tbl_user tu;

INSERT INTO TBL_USER(user_number, user_id, user_pw, user_name, user_age, user_gender, user_birth);
--VALUES(SEQ_USER.NEXTVAL, 'ABC', '1234', '짱구', 5, 'M', '2000-01-01');

DELETE FROM TBL_USER tu
WHERE user_number = 21;

SELECT user_number FROM tbl_user WHERE user_id = 'aaa' AND USER_pw = '1234';

--이름과 생일로 아이디 찾기
SELECT USER_ID FROM TBL_USER tu WHERE USER_name = '홍길동' AND user_birth = '2000-10-10';

--회원 전체정보 수정
--UPDATE TBL_USER
--SET user_id = ?, user_pw = ?, user_name = ?, USER_age = ?, user_gender = ? USER_BIRTH = ?;

--회원 1명의 전체정보 조회
SELECT user_id, USER_ID, USER_NAME, USER_AGE,USER_GENDER,USER_BIRTH 
FROM TBL_USER tu
WHERE user_number = 1;

--회원탈퇴
DELETE FROM TBL_USER tu 
WHERE user_number = ?;

select*FROM TBL_USER tu;



