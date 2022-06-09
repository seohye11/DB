SELECT t1.weekno,
       t1.day,
       t1.dayno
FROM cal t1
;

SELECT DECODE(day,'SUN',dayno) AS SUN,
       DECODE(day,'MON',dayno) AS MON,
       DECODE(day,'TUE',dayno) AS TUE,
       DECODE(day,'WED',dayno) AS WED,
       DECODE(day,'THU',dayno) AS THU,
       DECODE(day,'FRI',dayno) AS FRI,
       DECODE(day,'SAT',dayno) AS SAY
FROM cal
;