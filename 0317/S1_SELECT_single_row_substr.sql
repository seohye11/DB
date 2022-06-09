--SUBSTR 문자열을 추출하는 함수

SELECT job,
       SUBSTR(job,1,2),
       SUBSTR(job,3,2),
       SUBSTR(job,5)
FROM emp
;