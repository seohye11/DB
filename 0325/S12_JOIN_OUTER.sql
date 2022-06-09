--oracle outer join
--where 조건절에 데이터 없는 쪽에 (+)
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno(+) = t2.profno
ORDER BY stud_name
;

--ANSI outer join
--조인조건에 데이터가 있는 쪽을 가르키면 됨
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 RIGHT OUTER JOIN professor t2
ON t1.profno = t2.profno
ORDER BY stud_name
;