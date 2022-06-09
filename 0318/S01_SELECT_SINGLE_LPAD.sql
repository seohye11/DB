--LPAD함수 : 데이터와 자릿수를 지정한 후 데이터 길이가 지정한 자릿수보다 작을
--경우 나머지 공간을 특정문자로 채우는 함수

SELECT 'Oracle',
       LPAD('Oracle',10,'#') AS lpad_01,
       LPAD('Oracle',10) AS lpad_02
FROM dual
;