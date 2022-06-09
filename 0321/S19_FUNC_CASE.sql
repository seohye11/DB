--case문 : decode문과 마찬가지로 특정 조건에 따라 반환될 데이터를 설정할 때 사용
--조건과 결과가 '='인 경우
--CASE조건 WHEN결과1 THEN출력1
--         WHEN결과2 THEN출력2
--         WHEN결과3 THEN출력3 
--         ELSE출력4
--END "컬럼명"

--Student 테이블을 참조하여 deptno1 이 201 번인 학생의 이름과 전화번호, 지역 명을 출력하세요. 
--단 지역번호가 02 면 "SEOUL", 031 이면 "GYEONGGI", 051 이면 "BUSAN", 
--052 이면 "ULSAN", 055 이면 "GYEONGNAM", 나머지는 "ETC" 로 표시하세요.

SELECT name,
       tel,
       CASE(SUBSTR(tel,1,INSTR(tel,')')-1)) WHEN'02'THEN'SOEUL'
                                            WHEN'031'THEN'GYEONGGL'
                                            WHEN'051'THEN'BUSAN'
                                            WHEN'052'THEN'ULSAN'
                                            WHEN'052'THEN'GUEONGNAM'
                                            ELSE'ETC'
       END AS LOC02,
       DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),'02','SEOUL',
                                            '031','GYEONGGI',
                                            '051','BUSAN',
                                            '052','ULSAN',
                                            '055','GYEONGNAM','ETC') AS LOC
FROM student
WHERE deptno1 = 201
;