--GROUP BY�� : ��� ���� ���ϴ� ���� ���� ���
--SELECT
--FROM
--WHERE
--GROUP BY
--ORDER BY

--�μ��� �޿� �հ�
SELECT SUM(sal), '10' AS deptno FROM emp WHERE deptno = 10
UNION ALL
SELECT SUM(sal), '20'  FROM emp WHERE deptno = 20
UNION ALL
SELECT SUM(sal), '30'  FROM emp WHERE deptno = 30
;

SELECT SUM(sal)
FROM emp
GROUP BY deptno
;