--MAX,MIN�Լ� : �ִ밪�� �ּҰ��� ���ϴ� �Լ�
--MAX,MIN([DISTINCT,ALL])
--OVER(�м��� ���� ���� ����)
--���� : �����͸� ������� ����, ���� �ִ�,�ּ� ����

SELECT MAX(sal), MIN(sal)
FROM emp
;

SELECT MAX(hiredate),
       MIN(hiredate)
FROM emp
;