--������ ����(Hierarchical Query)
-- : �����͸� ��ȸ�� �� ������ ���踦 ���� �����͵� ��ȸ�� ���

--������ ���� ���ǻ���
--1) CONNECT BY������ Sub query�� �� �� ����
--2) �뷮�� �����Ͱ� ���� ��� �ð��� ���� �ɸ� �� �����Ƿ� 
--   start with, connect bt, where���� �ε����� �����Ǿ� �־�� ��
--3) �κй��� ó������� ������ ���������� ����� �� ����

SELECT LPAD(ename, LEVEL * 4, '*'),
       LEVEL
FROM emp
CONNECT BY PRIOR empno = mgr --��������
START WITH empno = 7839;     --��������

SELECT LPAD(ename, LEVEL * 4, '*'),
       LEVEL
FROM emp
CONNECT BY empno = PRIOR mgr
START WITH empno = 7839;

--PRIOR��ġ �߿� : �ش� Ű���尡 �����Ǿ� �ִ� �÷����� �ٷ� 
--                ���������͸� ã�ƶ� ���� ã�µ� ���
--CONNECT BY PRIOR �ڽ� �÷� : �θ� -> �ڽ�
--CONNECT BY PRIOR �θ� �÷� : �ڽ� -> �θ�