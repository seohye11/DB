--ROLLUP : �Ұ� ���
--SELECT
--FROM
--WHERE
--GROUP BY ROLLUP(�׷�ȭ �� ����)

--�� ������ SELECT���� ���� �÷��� ������ �����ؾ� �Ѵ�
--�� ������ SELECT���� ���� �÷��� ������ ���� �����ؾ� �Ѵ�

SELECT deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno, job
UNION ALL
SELECT deptno, null as job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno
UNION ALL
SELECT null as deptno, null as job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
ORDER BY deptno, job
;