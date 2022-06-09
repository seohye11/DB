SELECT COUNT(*) as TOTAL,
       COUNT(DECODE(t1.area,02,1)) AS SEOUL,
       COUNT(DECODE(t1.area,031,1)) AS GYEONGGL,
       COUNT(DECODE(t1.area,051,1)) AS busan,
       COUNT(DECODE(t1.area,052,1)) AS ULSAN,
       COUNT(DECODE(t1.area,053,1)) AS DAEGU,
       COUNT(DECODE(t1.area,055,1)) AS GYEONGNAM
FROM(
SELECT SUBSTR(tel,1,INSTR(tel,')')-1) AS area
FROM student
)t1
;
