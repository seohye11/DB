--�� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ����
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp t1
WHERE t1.sal IN(SELECT MAX(sal)
                FROM emp
                GROUP BY deptno);