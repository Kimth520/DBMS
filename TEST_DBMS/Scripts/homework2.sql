-- 보호자 테이블
CREATE TABLE TBL_OWNER (
    OWNER_ID NUMBER,
    NAME VARCHAR2(50),
    ADDRESS VARCHAR2(100),
    PHONE VARCHAR2(15),
    EMAIL VARCHAR2(50),
    CONSTRAINT PK_OWNER PRIMARY KEY(OWNER_ID)
);

-- 반려동물 테이블
CREATE TABLE TBL_PET (
    PET_ID NUMBER,
    NAME VARCHAR2(50),
    GENDER VARCHAR2(10),
    AGE NUMBER,
    SPECIES VARCHAR2(50) ,
    OWNER_ID NUMBER,
    CONSTRAINT PK_PET PRIMARY KEY(PET_ID),
    CONSTRAINT FK_OWNER FOREIGN KEY (OWNER_ID) REFERENCES TBL_OWNER(OWNER_ID)
);

SELECT *FROM TBL_OWNER;
SELECT *FROM TBL_PET;