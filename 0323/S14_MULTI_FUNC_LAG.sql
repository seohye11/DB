--LAG함수 : 이전 행 값을 가져올 때 사용하는 함수
--LAG(출력컬럼,OFFSET,기본출력값)
--OVER(Query_partition구문,ORDER BY 정렬할 컬럼)

SELECT ename,
       hiredate,
       sal,
       LAG(sal,1,0) OVER(ORDER BY hiredate) AS "LAG"
FROM emp
;