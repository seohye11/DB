--������ ��������(Multi row sub query)
-- in : ���� ������ ���� ���� ã��
-- EXISTS : SUB QUERY�� ���� ���� ��� ���� ���� ����
-- >ANY : ���� ���� ��� �߿��� �ּҰ��� ��ȯ
-- <ANY : ���� ���� ��� �߿��� �ִ밪�� ��ȯ
-- <ALL : ���� ���� ��� �߿��� �ּҰ��� ��ȯ
-- >ALL : ���� ���� ��� �߿��� �ִ밪�� ��ȯ

SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno IN (20,30)
;