SELECT SUBSTR(TO_CHAR(hiredate,'YYYY/MM/DD'),1,4) AS HIRE_YEAR,
       deptno,
       COUNT(SUBSTR(TO_CHAR(hiredate,'YYYY/MM/DD'),1,4)) AS CNT
FROM emp
GROUP BY SUBSTR(TO_CHAR(hiredate,'YYYY/MM/DD'),1,4),deptno
ORDER BY 1 DESC
;

--Ç®ÀÌ
SELECT EXTRACT(YEAR FROM hiredate) AS YEAR,
       deptno,
       COUNT(*)
FROM emp
GROUP BY EXTRACT(YEAR FROM hiredate),deptno
ORDER BY EXTRACT(YEAR FROM hiredate) DESC,deptno
;