--Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� �������� �̸��� 
--����ϼ���. �� �����л��� ���� �� �� ���� ��ܰ� ���� ������ ���� �ȵ� �л�
--����� �Ѳ����� ����ϼ���.

--ORACLE JOIN : UNION
--���������� �Ҵ� �ȵ� �л� ���� ���
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
UNION
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
;

--ANSI : FULL OUTER JOIN
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 FULL OUTER JOIN professor t2
ON t1.profno = t2.profno
;
