--60�� �μ� �Ի� ���� ���� ��� ��ȸ
SELECT MIN(hiredate)
FROM CHAP10HW_emp
WHERE deptno = 60;

--1������ �Ի� ���� ��� ��ȸ
SELECT * 
FROM CHAP10HW_emp
WHERE hiredate > (SELECT MIN(hiredate)
                  FROM CHAP10HW_emp
                  WHERE deptno = 60);

--������Ʈ
UPDATE CHAP10HW_emp
SET sal = sal*1.1,
    deptno = 80
WHERE hiredate > (SELECT MIN(hiredate)
                  FROM CHAP10HW_emp
                  WHERE deptno = 60);    

--������Ʈ Ȯ��
SELECT * 
FROM CHAP10HW_emp
WHERE deptno = 80;