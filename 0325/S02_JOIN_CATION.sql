--īƼ�� ���� ����ϴ� ����
--1) ������ �����ؼ� ���� ���̺��� �ݺ��ؼ� �д� ���� ���ϱ� ����
--2) �Ǽ��� ���� ���� �÷� �� �Ϻθ� ��Ʈ���� ���

--STEP 1 �μ� ��ȣ�� 10���� ������� ������ȸ
SELECT empno,
       ename,
       job,
       sal
FROM emp
WHERE deptno = 10
;
--STEP 2 ������ 3���� ����
SELECT LEVEL c1
FROM dual
CONNECT BY LEVEL <= 3
;

--STEP 3 īƼ�� ������ �μ� ��ȣ�� 10�� ���� 3��Ʈ�� �����
SELECT *
FROM(SELECT empno,
            ename,
            job,
            sal
     FROM emp
     WHERE deptno = 10),
     (SELECT LEVEL c1
      FROM dual
      CONNECT BY LEVEL <= 3)
;
