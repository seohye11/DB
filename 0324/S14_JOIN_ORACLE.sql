--ORACLE JOIN 문법
--SELECT a.col1, b.col1
--FROM table1 a,table b
--WHERE a.col2 = b.col2

--SELECT a.col1, b.col1
--FROM table1 a,table 
--WHERE table1.col2 = table.col2

--ANSI JOIN 문법
--SELECT a.col1, b.col1
--FROM table1 a [INNER} table b
--ON a.col2 = b.col2

--emp : 14건
--dept : 4건
--조인 조건이 누락이 되면 카티션 곱 생성 : 14*4 = 56건
SELECT t1.empno,
       t1.deptno,
       t2.dname
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
;