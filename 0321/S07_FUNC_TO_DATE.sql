--1981-6-1 이후 입사한 사원 정보 출력

SELECT empno
       ename,
       hiredate
FROM emp
WHERE hiredate > TO_DATE('1981/06/01','YYYY/MM/DD')
;