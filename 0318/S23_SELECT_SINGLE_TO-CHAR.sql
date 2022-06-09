--TO_CHAR : 숫자 또는 날짜 데이터를 문자로 변환
--TO_CHAR(날짜데이터,'출력되길 원하는 문자형태')

--TO_NUMBER : 문자데이터를 숫자로 변환
--TO_DATE : 문자데이터를 날짜로 변환
SELECT SYSDATE,
       TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS') AS TO_CHAR_FORMAT,
       TO_CHAR(SYSDATE,'MONTH') AS "MONTH",
       TO_CHAR(SYSDATE,'DDD') AS "DDD"
FROM dual
;