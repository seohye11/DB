--EQUI Join(등가조인) : 선행 테이블에서 데이터를 가져온 후 조인 조건절을 
--검사해서 동일한 조건을 가진 데이터를 후행 테이블에서 꺼내오는 방법
--연산자) '='

--emp테이블과 dept 테이블을 조회

--oracle join
SELECT t1.empno,
       t1.ename,
       t2.dname
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
;

--ANSI join
--INNER JOIN : 조인 기준
--ON절에는 조인 조건
SELECT t1.empno,
       t1.ename,
       t2.dname,
       t2.deptno
FROM emp t1 INNER JOIN dept t2
ON t1.deptno = t2.deptno
;
