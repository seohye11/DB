--�Ի� 42�� �̸��� ��������� ���
SELECT empno,
       ename,
       hiredate,
       sysdate,
       ADD_MONTHS(hiredate,12*10*4+2) "ADD_42YEAR"
FROM emp
WHERE ADD_MONTHS(hiredate,12*10*4+2) > SYSDATE
;