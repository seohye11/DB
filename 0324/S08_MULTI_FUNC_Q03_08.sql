SELECT deptno,
       ename,
       sal,
       SUM(sal)OVER() AS TOTAL,
       ROUND(sal/SUM(sal)OVER()*100,2) AS "%",
       ROUND(RATIO_TO_REPORT(sal) OVER()*100,2) AS "$2"
FROM emp
ORDER BY sal DESC
;

--RATIO_TO_REPORT 함수 : 주어진 그룹에 대해 expr 값의 합을 기준으로 
--각 로우의 상대적 비율을 반환하는 함수다