SELECT deptno,
       name,
       pay,
       SUM(pay)OVER(PARTITION BY deptno) AS TOTAL_PAY,
       ROUND(pay/SUM(pay)OVER(PARTITION BY deptno)*100,2) AS "RATIO_%",
       ROUND(RATIO_TO_REPORT(pay)OVER(PARTITION BY deptno)*100,2) AS RATIO
FROM professor
ORDER BY deptno, name
;