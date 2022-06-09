--OUTER JOIN : EQUI,NONE EQUI는 조회하려는 데이터들이 JOIN에 참여하는
--모든 테이블에 데이터가 존재하는 경우에는 결과 값을 출력
--반대로 OUTER JOIN은 한 쪽 테이블에는 데이터가 있고 다른 한 쪽 테이블에는
--데이터가 없는 경우, 데이터가 있는 쪽 내용을 모두 출력하는 방법

--Student 테이블과 Professor 테이블을 Join하여 학생이름과 지도교수 이름을 
--출력하세요. 단 지도교수가 결정되지 않은 학생의 명단도 함께 출력하세요.

--oracle outer join
--where 조건절에 데이터 없는 쪽에 (+)
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
;

--ANSI outer join
--조인조건에 데이터가 있는 쪽을 가르키면 됨
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 LEFT OUTER JOIN professor t2
ON t1.profno = t2.profno
;