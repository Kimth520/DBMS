-- sys as sysdba 계정의 스크립트
GRANT UPDATE, INSERT, DELETE ON hr.employees TO test;

REVOKE SELECT ON hr.EMPLOYEES FROM TEST;