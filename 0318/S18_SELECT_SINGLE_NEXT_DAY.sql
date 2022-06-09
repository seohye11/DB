--NEXT_DAY : 주어진 날짜를 기준으로 돌아오는 날짜 출력 (날짜)
--LAST_DAY : 주어진 날짜가 속한 달의 마지막 날짜 (날짜)

SELECT SYSDATE,
       NEXT_DAY(SYSDATE,'월요일') AS "NEXT_DAY_월",
       LAST_DAY(SYSDATE) AS "3MONTH_LAST"
FROM dual
;