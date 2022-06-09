--SELF JOIN : 원하는 데이터가 하나의 테이블에 들어가 있는 경우

--oracle self join
SELECT t1.empno,
       t1.ename,
       t2.ename as mgr_name
FROM emp t1, emp t2
WHERE t1.mgr = t2.empno
;

--ansi self join
SELECT t1.empno,
       t1.ename,
       t2.ename as mgr_name
FROM emp t1 JOIN emp t2
ON t1.mgr = t2.empno
;

SELECT t1.empno,
       t1.ename,
       t2.ename as mgr_name
FROM emp t1 LEFT OUTER JOIN emp t2
ON t1.mgr = t2.empno
;