--변수이름 정하기
--1. 같은 블록 안에서는 고유해야 함
--2. 대/소문자를 구별하지 않는다
--3. 테이블 이름 붙이는 규칙과 동일

--변수의 자료형
-- : 저장할 데이터에 따라 스칼라, 복합, 참조, LOB(Large Object)로 구분

--스칼라형(scalar type) : 오라클에서 기본으로 정의해 놓은 자료형(숫자,문자,날짜..)
--NUMBER : 소수점을 포함할 수 있는 최대 38자리 숫자 데이터
--CHAR : 최대 32,767 바이트 고정 길이 문자열
--VARCHAR2 : 최대 32,767 바이트 가변 길이 문자열
--DATE : 기원전 4712년 1월1일부터 서기 9999년 12월31일까지
--BOOLEAN : PL/SQL에서만 사용할 수 있는 논리 자료형 TRUE/FALSE

--참조형(reference type) : 특정 테이블의 열의 자료형, 하나의 행 구조를 참조하는 자료형
--                        변수이름 테이블.열이름%TYPE;
--                        변수이름 테이블.%ROWTYPE;

SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO DEPT.DEPTNO%TYPE := 50;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO);
END;
/