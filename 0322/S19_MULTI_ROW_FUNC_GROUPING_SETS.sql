--GROUPING SETS�Լ� : ���� ������ �׷�ȭ ���� �������� �� �� �� �׷�ȭ��
--���� ��� ���� ����ϴ� �� ���
--�׷��� ������ ���� ���� ��� �����ϰ� ��� ����

--SELECT
--FROM
--WHERE
--GROUP BY GROUPING SETS(�÷�)

SELECT grade, COUNT(*)
FROM student
GROUP BY grade
UNION
SELECT deptno1, COUNT(*)
FROM student
GROUP BY deptno1
;