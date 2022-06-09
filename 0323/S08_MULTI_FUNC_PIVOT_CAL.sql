SELECT MAX(DECODE(day,'SUN',dayno)) AS SUN,
       MAX(DECODE(day,'MON',dayno)) AS MON,
       MAX(DECODE(day,'TUE',dayno)) AS TUE,
       MAX(DECODE(day,'WED',dayno)) AS WED,
       MAX(DECODE(day,'THU',dayno)) AS THU,
       MAX(DECODE(day,'FRI',dayno)) AS FRI,
       MAX(DECODE(day,'SAT',dayno)) AS SAY
FROM cal
GROUP BY weekno
ORDER BY weekno
;

SELECT * FROM (SELECT weekno "week", day, dayno FROM cal)
PIVOT
(MAX(dayno) FOR day IN ( 'SUN' AS SUN
                        ,'MON' AS MON
                        ,'TUE' AS TUE
                        ,'WED' AS WED
                        ,'THU' AS THU
                        ,'FRI' AS FRI
                        ,'SAT' AS SAT )
)
ORDER BY "week"
;