--SUM�Լ� : �Էµ����͵��� �հ� ���� ���ϴ� �Լ�
--SUM([DISTINCT,ALL])
--OVER(�м��� ���� ���� ����)

SELECT SUM(ALL sal), --sal�� �� ��
       SUM(DISTINCT sal), --sal �ߺ� ������ ���� �� ��
       SUM(sal) --SUM(sal) DEFAULT ALL
FROM emp
ORDER BY sal
;
