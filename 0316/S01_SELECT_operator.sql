--emp ������� �̸�, ����, ����, ����
--���� : ���� * 12 + ����
SELECT ename, sal*12+comm, sal, comm
FROM emp
;
-- sal*12+comm �����Ͱ� ���� ������ comm NULL �������� 
--null ���� �� �� ����