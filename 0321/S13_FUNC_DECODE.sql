--DECODE(A,B,'1','C','2','3')
--A가 B인 경우 1, A가 C인 경우 2, 둘 다 아닌 경우 3

SELECT deptno,
       name,
       DECODE(deptno, 101, 'Compuer Engineering',
                      102, 'Multimedia Engineering',
                      103,'Software Engineering',
                      'ETC') AS DNAME
FROM professor
;