--ADD_MONTHS : �־��� ��¥�� ������ ���� (��¥)
--ADD_MONTHS(��¥,1)

SELECT SYSDATE,
       ADD_MONTHS(SYSDATE,3) "ADD_MONTHS+3",
       ADD_MONTHS(SYSDATE,-2) "ADD_MONTHS-2"
FROM dual
;

--emp���̺����� �Ի� 20�ֳ��� �Ǵ� ������� ������ ���
--empno, ename, hiredate
SELECT empno,
       ename,
       hiredate,
       ADD_MONTHS(hiredate,12*10*2) AS WORK20YEAR
FROM emp
;