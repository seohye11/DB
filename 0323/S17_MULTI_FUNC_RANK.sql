--RANK함수 : 주어진 컬럼 값의 그룹에서 값의 순위를 계산한 후 순위를 출력
--같은 순위일 때 가지는 순위 기준 -> 같은 출력 값

SELECT empno,
       ename,
       sal,
       deptno,
       RANK() OVER(PARTITION BY deptno ORDER BY sal DESC) "RANK_DESC"
FROM emp
;