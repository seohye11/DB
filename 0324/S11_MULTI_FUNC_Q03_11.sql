SELECT L_DATE AS "대출일자",
       L_CODE AS " 대출종목코드",
       L_QTY AS "대출건수",
       L_TOTAL AS "대출총액",
       SUM(l_total)OVER(PARTITION BY l_code ORDER BY l_total) AS "누적대출금액"
FROM loan
WHERE L_STORE = 1000
;