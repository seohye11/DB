--LTRIM([원본문자열 컬럼],[삭제할 문자 집합])
--RTRIM([원본문자열 컬럼],[삭제할 문자 집합])

SELECT
    '['|| TRIM(' __Oracle__ ')|| ']' AS TRIM,  
    '['|| LTRIM(' __Oracle__ ')|| ']' AS LTRIM,
    '['|| LTRIM('<_Oracle_>','<_')|| ']' AS LTRIM, 
    '['|| RTRIM(' __Oracle__ ')|| ']' AS RTRIM,
    '['|| RTRIM('<_Oracle_>','_>')|| ']' AS RTRIM
FROM dual
;
