--GROUP BY�� ���ǻ���
--1. SELECT ���� ���� �׷��Լ� �̿��� �÷��̳� ǥ������ �ݵ�� GROUP BY 
--���� ���Ǿ�� �մϴ�. �׷��� ���� ��� �Ʒ��� ���� ������ �߻��մϴ�0

--GROUP BY���� job���� ����
SELECT deptno, job, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno
ORDER BY deptno
;

--SELECT �������� GROUP BY�� �÷� ���� ����
SELECT deptno, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;

--2. GROUP BY ������ �ݵ�� �÷����� ���Ǿ�� �ϸ� �÷� Alias �� 
--����ϸ� �ȵ˴ϴ�
SELECT deptno AS NO, job, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY no, job --group by ������ alias ��� �ȵ�
ORDER BY deptno, job
;