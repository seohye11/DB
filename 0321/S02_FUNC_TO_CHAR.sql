--emp���̺��� ��ȸ�Ͽ� �̸��� 'ALLEN'�� ����� ����� �̸��� �������
--������ (sal*12)+comm�� ����ϰ� õ ���� ���б�ȣ�� ǥ��

SELECT empno,
       ename,
       sal,
       comm,
       tO_CHAR((sal*12)+comm,'999,999') AS salary
FROM emp
WHERE ename = 'ALLEN'
;