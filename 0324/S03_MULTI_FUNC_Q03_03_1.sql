SELECT COUNT(*) as TOTAL,
       COUNT(DECODE(t1.area,02,1)) AS SEOUL,
       COUNT(DECODE(t1.area,031,1)) AS GYEONGGL,
       COUNT(DECODE(t1.area,051,1)) AS BUSAN,
       COUNT(DECODE(t1.area,052,1)) AS ULSAN,
       COUNT(DECODE(t1.area,053,1)) AS DAEGU,
       COUNT(DECODE(t1.area,055,1)) AS GYEONGNAM
FROM(
SELECT SUBSTR(tel,1,INSTR(tel,')')-1) AS area
FROM student
)t1
;

SELECT * FROM 
(SELECT COUNT(*) OVER() TOTAL, SUBSTR(tel,1,INSTR(tel,')')-1) AS area FROM student)
PIVOT(COUNT(area) FOR area IN ('02' AS SEOUL,
                               '031' AS GYEONGGL,
                               '051' AS BUSAN,
                               '052' AS ULSAN,
                               '053' AS DAEGU,
                               '055' AS GYEONGNAM)
)
;
