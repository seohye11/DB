--AVG�Լ� : �Էµ� ������ ��� ���� ���ϴ� �Լ�
--AVG([DISTINCT,ALL])
--OVER(�м��� ���� ���� ����)

--NULL�� ������ ���� : ��տ���
SELECT COUNT(comm),
       SUM(comm),
       AVG(comm)
FROM emp
;

SELECT COUNT(*),
       SUM(comm),
       AVG(NVL(comm,0))--NULLó�� �ʿ�
FROM emp
;