--�л� ���̺� (student) �� �а� ���̺� (department) ���̺��� ����Ͽ� �л��̸�, 1 
--�����а���ȣ(deptno1) , 1���� �а� �̸��� ����ϼ���.																													
--( ANSI Join ������ Oracle Join ���� ���� ���� SQL �� �ۼ��ϼ��� )	

--oracle join
SELECT t1.name as stu_name,
       t2.deptno as deoptno1,
       t2.dname as dept_name
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
ORDER BY studno
;

--ansi join
SELECT t1.name as stu_name,
       t2.deptno as deoptno1,
       t2.dname as dept_name
FROM student t1 JOIN department t2
ON t1.deptno1 = t2.deptno
ORDER BY studno
;