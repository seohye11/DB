SELECT grade, deptno1, COUNT(*)
FROM student
GROUP BY GROUPING SETS(grade, deptno1)
;
--�ϳ��� ���̺� ���� �����׷� �Լ��� ���ȴٸ� GROUPING SETS�Լ� Ȱ��