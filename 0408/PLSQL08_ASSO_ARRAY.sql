--컬렉션 메서드
--EXIST(n) : 컬렉션에서 n인덱스의 데이터 존재 여부를 true/false로 반환
--COUNT : 컬렉션에 포함되어 있는 요소 개수를 반환
--LIMIT : 현재 컬렉션의 최대 크기를 반환, 없으면 NULL반환
--FIRST : 컬렉션의 첫번째 인덱스 번호를 반환
--LAST : 컬렉션의 마지막 인덱스 번호를 반환
--PRIOR(n) : 컬렉션 n인덱스 바로 앞 인덱스 값 반환, 없으면 NULL반환
--NEXT(n) : 컬렉션 n인덱스 바로 다음 인덱스 값 반환, 없으면 NULL반환
--DELETE : 컬렉션에 지정된 요소를 지우는데 사용(DELETE, DELETE(n),DELETE(n,m))
--EXTEND : 컬렉션의 크기를 증가,연관배열을 재외한 중첩테이블,VARRAY에서 사용가능
--TRIM : 컬렉션의 크기를 감소

SET SERVEROUTPUT ON;
DECLARE
    TYPE ITAB_EX IS TABLE OF VARCHAR(20)
    INDEX BY PLS_INTEGER;
    
    text_arr ITAB_EX;
BEGIN
    text_arr(1) := '1st';
    text_arr(2) := '2st';
    text_arr(3) := '3st';
    text_arr(4) := '4st';
    text_arr(50) := '5st';
    
    DBMS_OUTPUT.PUT_LINE('text_arr.COUNT : '|| text_arr.COUNT);
    DBMS_OUTPUT.PUT_LINE('text_arr.FIRST : '|| text_arr.FIRST);
    DBMS_OUTPUT.PUT_LINE('text_arr.LAST : '|| text_arr.LAST);
    DBMS_OUTPUT.PUT_LINE('text_arr.PRIOR(50) : '|| text_arr.PRIOR(50));
    DBMS_OUTPUT.PUT_LINE('text_arr.NEXT(50) : '|| text_arr.NEXT(50));
END;
/