--조건과 결과가 '='이 아닌 경우
--CASE WHEN조건과 결과1 THEN출력1
--     WHEN조건과 결과2 THEN출력2
--     WHEN조건과 결과3 THEN출력3 
--     ELSE출력4
--END "컬럼명"

--Student 테이블의 jumin 컬럼을 참조하여 학생들의 이름과 태어난 달 , 그리고 분기를 출력하세요. 
--
--태어난 달이 01-03월 은 1/4, 
--04 - 06월 은 2/4 , 
--07 - 09월 은 3/4 , 
--10 - 12월은 4/4 로 출력하세요

SELECT name,
       jumin,
       SUBSTR(jumin,3,2) AS "Month",
       CASE WHEN SUBSTR(jumin,3,2) BETWEEN '01'AND '03' THEN '1/4'
            WHEN SUBSTR(jumin,3,2) BETWEEN '04'AND '06' THEN '2/4'
            WHEN SUBSTR(jumin,3,2) BETWEEN '07'AND '09' THEN '3/4'
            WHEN SUBSTR(jumin,3,2) BETWEEN '10'AND '12' THEN '4/4'
       END "Quoter"
FROM student
;