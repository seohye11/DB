--��å��, �μ���, �ְ�޿�
--job 10 20 30
--ANALYST -- 3000 --
--CLERKL 1300 1100 950

--�μ��� ��å�� �ְ� �޿�
SELECT deptno, job, MAX(sal)
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;