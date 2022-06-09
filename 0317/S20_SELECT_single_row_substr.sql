SELECT name,
       SUBSTR(jumin,1,6) "BIRTHDAY",
       SUBSTR(jumin,1,6)-1 "BIRTHDAY-1"
FROM student
WHERE deptno1 = 101
;