--DENSE_RANK�Լ� : ������ ������ �ϳ��� �Ǽ��� ���

SELECT empno,
       ename,
       sal,
       deptno,
       RANK() OVER(ORDER BY sal DESC) "RANK_DESC",
       DENSE_RANK() OVER(ORDER BY sal DESC) "DENSE_DESC"
FROM emp
;