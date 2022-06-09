--패키지 : 업무나 기능면에서 연관성이 높은 프로시저, 함수 등 여러개의
--PL/SQL 서브프로그램을 하나의 논리 그룹으로 묶어 통합 관리하는데 사용하는 객체
--패키지 구조와 생성 : 명세서, 본문(BODY)

--패키지 명세 : 패키지에 포함할 변수,상수,예외,커서,PL/SQL서브프로그램을 선언
--CREATE [OR REPLACE] PACKAGE 패키지이름
--IS | AS
--  서브프로그램을 포함한 다양한 객체 선언
--END[패키지이름];

CREATE OR REPLACE PACKAGE PKG_EXAMPLE
IS
    spec_no NUMBER := 10;
    FUNCTION func_aftertax(sal NUMBER) RETURN NUMBER;
    
    PROCEDURE pro_emp(in_empno IN EMP.empno%TYPE);
    
    PROCEDURE pro_dept(in_deptno IN DEPT.deptno%TYPE);
END;
/


