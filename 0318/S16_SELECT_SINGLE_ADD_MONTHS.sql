--입사 42년 미만인 사원데이터 출력
SELECT empno,
       ename,
       hiredate,
       sysdate,
       ADD_MONTHS(hiredate,12*10*4+2) "ADD_42YEAR"
FROM emp
WHERE ADD_MONTHS(hiredate,12*10*4+2) > SYSDATE
;