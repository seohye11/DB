--날짜 데이터 + 숫자 : 날짜데이터보다 숫자만큼 일 수 이 후의 날짜
--날짜 데이터 - 숫자 : 날짜데이터보다 숫자만큼 일 수 이 전의 날짜
--날짜 데이터 - 날짜 데이터 : 두 날짜 데이터 간의 일 수 차이
--날짜 데이터 + 날짜 데이터 : 연산불가, 지원하지 않음

--SYSDATE : 시스템의 현재 날짜와 시간 (날짜)

SELECT SYSDATE
FROM dual
;
--날짜 FORMAT변경하기(1회성)
ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR-MM-DD,HH24:MI:SS';

SELECT SYSDATE
FROM dual
;

SELECT SYSDATE + 1 AS tomorrow,
       SYSDATE  AS CURR_DATE,
       SYSDATE - 1 AS yesterday
FROM dual
;