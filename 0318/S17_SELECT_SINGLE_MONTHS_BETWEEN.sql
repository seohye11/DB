--MONTHS_BETWEEN : �� ��¥ ������ ���� �� (����)
--MONTHS_BETWEEN(��¥������1, ��¥������2);

--emp hiredate�� sysdate���� ������

SELECT empno,
       ename,
       hiredate,
       sysdate,
       MONTHS_BETWEEN(hiredate, SYSDATE) AS months01,
       MONTHS_BETWEEN(SYSDATE, hiredate) AS months02,
       TRUNC(MONTHs_BETWEEN(SYSDATE,hiredate))AS months03
FROM emp
;