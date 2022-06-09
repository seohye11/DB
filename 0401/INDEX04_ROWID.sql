--ROWID : 오라클에서 데이터의 주소
SELECT ROWID,--주소조회
       empno,
       ename
FROM emp;

SELECT ROWID,
       empno,
       ename
FROM emp
WHERE ROWID = 'AAAR9ZAAHAAAACVAAF';--rowid로 데이터 조회

--AAAR9Z(데이터오브젝트 번호)AAH(파일번호)AAAACV(BLCOK번호)AAF(ROW번호)