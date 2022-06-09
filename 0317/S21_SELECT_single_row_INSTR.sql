--INSTR함수 : 문자열 데이터 안에 특정 문자나 문자열이 어디에 포함되어 
--있는지를 알고자 할 때 사용
SELECT INSTR('HELLO, ORACLE','L'),
       INSTR('HELLO, ORACLE','L',5),
       INSTR('HELLO, ORACLE','L',2,2)
FROM dual
;