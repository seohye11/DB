--DECODE(A,B,'1','2') A가 B이면 '1' 그렇지 않으면 '2'

SELECT deptno,
       name,
       DECODE(deptno, 101, 'Compuer Emgineering','ETC') AS DNAME
FROM professor
;
