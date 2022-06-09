--emp테이블을 조회하여 이름이 'ALLEN'인 사원의 사번과 이름과 연봉출력
--연봉은 (sal*12)+comm로 계산하고 천 단위 구분기호로 표시

SELECT empno,
       ename,
       sal,
       comm,
       tO_CHAR((sal*12)+comm,'999,999') AS salary
FROM emp
WHERE ename = 'ALLEN'
;