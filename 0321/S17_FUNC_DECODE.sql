--Student ���̺��� ����Ͽ� �� 1 ���� (deptno1) �� 101 ���� �а� �л����� �̸��� �ֹι�ȣ, 
--������ ����ϵ� ������ �ֹι�ȣ(jumin) �÷��� �̿��Ͽ� 7��° ���ڰ� 1�� ��� "  ����" , 
--2�� ��� "����  " �� ����ϼ���.

SELECT name,
       jumin,
       deptno1,
       DECODE(SUBSTR(jumin,7,1),'1','MAN','WOMEN') AS "Gender"
FROM student
WHERE deptno1 = 101
;