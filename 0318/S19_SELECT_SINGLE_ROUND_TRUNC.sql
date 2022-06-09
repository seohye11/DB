--ROUND : 주어진 날짜 반올림 (날짜)
--정오를 기준으로 상품접수가 오전에 되었으면 당일배송,
--그렇지 않으면 다음날 배송
--TRUNC : 주어진 날짜 버림 (날짜)
--원서접수

SELECT SYSDATE,
       ROUND(SYSDATE) AS "ROUND_SYSDATE",
       TRUNC(SYSDATE) AS "ROUND_SYSDATE"
FROM dual
;