--DUAL은 SYS소유의 테이블로 SCOTT도 사용할 수 있는 더미 테이블

--DESC dual;
--
--SELECT dummy
--FROM dual
--;

SELECT LENGTH('한글'),
       LENGTHB('한글')
FROM dual
;