--student�� prfessor�� join �Ͽ� �л��� �̸��� �������� ���

--oracle join
SELECT t1.name AS stud_name,
       t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno
;

--ANSI join
SELECT t1.name AS stud_name,
       t2.name AS prof_name
FROM student t1 INNER JOIN professor t2
ON t1.profno = t2.profno
;
