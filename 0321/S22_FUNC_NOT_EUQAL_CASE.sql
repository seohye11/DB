--emp 테이블을 조회하여 empno , ename , sal , LEVEL(급여등급)을 아래와 같이 출력하세요.
--단 급여등급은 sal 을 기준으로 1 - 1000 이면 Level 1 
--, 1001 - 2000 이면 Level 2 
--, 2001 - 3000 이면 Level 3 
--, 3001 - 4000 이면 Level 4 
--, 4001 보다 많으면 Level 5 로 출력하세요.

SELECT empno,
       ename,
       sal,
       CASE WHEN sal BETWEEN 1 AND 1000 THEN 'Level 1'
            WHEN sal BETWEEN 1001 AND 2000 THEN 'Level 2'
            WHEN sal BETWEEN 2001 AND 3000 THEN 'Level 3'
            WHEN sal BETWEEN 3001 AND 4000 THEN 'Level 4'
            WHEN sal >= 4001 THEN 'Level 5'
        END AS "LEVEL"
FROM emp
ORDER BY 4 DESC
;