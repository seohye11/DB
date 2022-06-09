--MONTHS_BETWEEN : 두 날짜 사이의 개월 수 (숫자)
--MONTHS_BETWEEN(날짜데이터1, 날짜데이터2);

--emp hiredate와 sysdate간의 개월수

SELECT empno,
       ename,
       hiredate,
       sysdate,
       MONTHS_BETWEEN(hiredate, SYSDATE) AS months01,
       MONTHS_BETWEEN(SYSDATE, hiredate) AS months02,
       TRUNC(MONTHs_BETWEEN(SYSDATE,hiredate))AS months03
FROM emp
;