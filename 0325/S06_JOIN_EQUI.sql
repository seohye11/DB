--���� ���ǰ� �˻�����
--student ���̺��� ��ȸ�Ͽ� 1����(deptno1)�� 101���� �л����� �̸���
--�� �л����� �������� ��ȣ�� �������� �̸��� ����ϼ���.

--oracle join
SELECT t1.name as STU_NAME,
       t2.name as PROF_NAME
FROM student t1, professor t2
WHERE t1.profno = t2.profno
AND t1.deptno1 = 101
;

--ANSI join
SELECT t1.name as STU_NAME,
       t2.name as PROF_NAME
FROM student t1 JOIN professor t2
ON t1.profno = t2.profno
WHERE t1.deptno1 = 101 --WHERE = AND
;