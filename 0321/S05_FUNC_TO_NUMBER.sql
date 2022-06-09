--TO_NUMBER : 문자데이터를 숫자 데이터로 변환하는 함수
--TO_NUMBER('문자열데이터','인식될 숫자형태')

SELECT TO_NUMBER('1,300','999,999')-TO_NUMBER('1,500','999,999')
FROM dual
;