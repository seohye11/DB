--DECODE(A,B,'1','C','2','3')
--A�� B�� ��� 1, A�� C�� ��� 2, �� �� �ƴ� ��� 3

SELECT deptno,
       name,
       DECODE(deptno, 101, 'Compuer Engineering',
                      102, 'Multimedia Engineering',
                      103,'Software Engineering',
                      'ETC') AS DNAME
FROM professor
;