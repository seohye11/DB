--자료형이 같은 여러 데이터를 저장하는 컬렉션
--TABLE TYPE변수라 하기도 한다
--이 변수는 Record Type과 같이 여러가지 유형의 데이터 컬럼을 가질 수 있다

--중첩테이블(nested table)
--VARRAY(valiable-size array)
--연관배열(associative array) -> 사용빈도 최다
-- : 인덱스라고도 불리는 키, 값으로 구성되는 컬렉션
--   중복되지 않은 유일한 키를 통해 값을 저장하고 불러오는 방식
--  TYPE 연관배열이름 IS TABLE OF 자료형[NOT NULL]
--  INDEX BY 인덱스형;
--> 자료형 : 연관배열에 사용할 자료형, VARCHAR2, DATE, NUMBER, %TYPE, %RECORD
--> 인덱스형 : 키로 사용할 인덱스의 자료형을 지정
--BINARY_INREGER_INTEGER같은 정수, VARCHAR2같은 문자자료형도 사용 가능

SET SERVEROUTPUT ON;
DECLARE
    --연관배열  정의
    TYPE ITAB_EX IS TABLE OF VARCHAR2(20)
    INDEX BY PLS_INTEGER;
    --PLS_INTEGER : -2,147,483,648~2,147,483,648까지 범위를 가진 숫자 타입
    --              NUMBER형에 비해 내부적으로 저장 공간 덜 차지함
    
    --선언
    text_arr ITAB_EX;
BEGIN
    text_arr(1) := '1st data';
    text_arr(2) := '2st data';
    text_arr(3) := '3st data';
    
    DBMS_OUTPUT.PUT_LINE('text_arr(1) : '|| text_arr(1));
    DBMS_OUTPUT.PUT_LINE('text_arr(2) : '|| text_arr(2));
    DBMS_OUTPUT.PUT_LINE('text_arr(3) : '|| text_arr(3));
END;
/

