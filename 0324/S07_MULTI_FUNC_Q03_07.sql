SELECT COUNT(*)||'EA ('|| 20/COUNT(*)*100||'%)'AS TOTAL,
       COUNT(DECODE(t1.area,02,1))||'EA('||COUNT(DECODE(t1.area,02,1))/COUNT(*)*100||'%)' AS SEOUL,
       COUNT(DECODE(t1.area,031,1))||'EA ('||COUNT(DECODE(t1.area,031,1))/COUNT(*)*100||'%)' AS GYEONGGL,
       COUNT(DECODE(t1.area,051,1))||'EA (' ||COUNT(DECODE(t1.area,051,1))/COUNT(*)*100||'%)'AS busan,
       COUNT(DECODE(t1.area,052,1))||'EA (' ||COUNT(DECODE(t1.area,052,1))/COUNT(*)*100||'%)'AS ULSAN,
       COUNT(DECODE(t1.area,053,1))||'EA (' ||COUNT(DECODE(t1.area,053,1))/COUNT(*)*100||'%)'AS DAEGU,
       COUNT(DECODE(t1.area,055,1))||'EA (' ||COUNT(DECODE(t1.area,055,1))/COUNT(*)*100||'%)'AS GYEONGNAM
FROM(
SELECT SUBSTR(tel,1,INSTR(tel,')')-1) AS area
FROM student
)t1
;