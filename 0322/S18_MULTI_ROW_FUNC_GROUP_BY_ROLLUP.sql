--ROLLUP(A,B,C) = (3+1)�� 4���� �Ұ�
--CUBE(A,B,C) = (2��3��)�� 8���� �Ұ�

--deptno���� �׷�ȭ �� �� ROLLUP�Լ��� job����
SELECT deptno, job, COUNT(*)
FROM emp
GROUP BY deptno, ROLLUP(job)
;

SELECT deptno, job, COUNT(*)
FROM emp
GROUP BY job, ROLLUP(deptno)
;