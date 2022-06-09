--LEAD함수 : 이 후의 값을 가져오는 함수
--LEAD(출력컬럼,OFFSET,기본출력값)
--OVER(Query_partition구문,ORDER BY 정렬할 컬럼)

SELECT ename,
       hiredate,
       sal,
       LEAD(sal,1,0) OVER(ORDER BY hiredate) AS "LAG"
FROM emp
;