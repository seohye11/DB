--LAG�Լ� : ���� �� ���� ������ �� ����ϴ� �Լ�
--LAG(����÷�,OFFSET,�⺻��°�)
--OVER(Query_partition����,ORDER BY ������ �÷�)

SELECT ename,
       hiredate,
       sal,
       LAG(sal,1,0) OVER(ORDER BY hiredate) AS "LAG"
FROM emp
;