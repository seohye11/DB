--RANK�Լ� : �־��� �÷� ���� �׷쿡�� ���� ������ ����� �� ������ ���
--���� ������ �� ������ ���� ���� -> ���� ��� ��

SELECT empno,
       ename,
       sal,
       RANK() OVER(ORDER BY sal DESC) "RANK_DESC"
FROM emp
;