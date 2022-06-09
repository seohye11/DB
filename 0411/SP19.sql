--USER_ERRORS 디셔너리 통한 확인

SELECT name,
       type,
       line,
       text
FROM user_errors
WHERE name = 'PRO_ERR'
;