--LEAD�Լ� : �� ���� ���� �������� �Լ�
--LEAD(����÷�,OFFSET,�⺻��°�)
--OVER(Query_partition����,ORDER BY ������ �÷�)

SELECT ename,
       hiredate,
       sal,
       LEAD(sal,1,0) OVER(ORDER BY hiredate) AS "LAG"
FROM emp
;