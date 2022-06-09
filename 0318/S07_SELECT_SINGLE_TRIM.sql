--특정 문자를 지우는 TRIM, LTRIM, RTRIM
--문자열 데이터 내에서 특정 문자를 지우기 위해 사용한다
--TRIM ([삭제옵션][삭제할 문자 선택] FROM [원본 문자열 데이터 필수]);
--LEADING : 왼쪽 문자 삭제
--TRAILING : 오른쪽 문자 삭제
--BOTH : 양쪽 문자 삭제

SELECT
    '['|| TRIM('_ _Oracle_ _')|| ']' AS trim,
    '['|| TRIM(LEADING '_' FROM '_ _Oracle_ _')|| ']' AS LEADING,
    '['|| TRIM(TRAILING '_' FROM '_ _Oracle_ _')|| ']' AS TRAILING,
    '['|| TRIM(BOTH '_' FROM '_ _Oracle_ _')|| ']' AS BOTH
FROM dual
;