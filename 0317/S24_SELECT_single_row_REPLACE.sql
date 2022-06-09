--REPLACE함수 : 특정 문자열 데이터에 포함된 문자를 다른 문자로 대체할 경우 사용
SELECT '010-1234-5678' as REPALACE_BEFORE,
       REPLACE('010-1234-5678','-',' ') AS REP,
       REPLACE('010-1234-5678','-') AS REP
FROM dual
;