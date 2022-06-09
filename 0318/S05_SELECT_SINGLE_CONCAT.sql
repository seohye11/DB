--CONCAT함수 : 두 개의 문자열 데이터를 하나의 데이터로 연결해 주는 역할

SELECT CONCAT(empno,ename),
       CONCAT(empno,CONCAT(':',ename)) AS CON
FROM emp
WHERE ename = 'SCOTT'
;

SELECT empno||ename AS empno_name,
       empno||':'||ename AS con
FROM emp
WHERE ename = 'SCOTT'
;