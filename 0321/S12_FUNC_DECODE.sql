--DECODE(A,B,'1','2') A�� B�̸� '1' �׷��� ������ '2'

SELECT deptno,
       name,
       DECODE(deptno, 101, 'Compuer Emgineering','ETC') AS DNAME
FROM professor
;
