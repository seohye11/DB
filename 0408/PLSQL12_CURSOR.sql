--명시적인 커서 : 사용자가 직접 커서를 선언하고 사용하는 커서를 뜻함
--1단계 : 커서의 선언(declaration) 
--2단계 : 커서열기(open)
--3단계 : 커서에서 읽어온 데이터 사용(fetch)
--4단계 : 커서 닫기(close)

--DECLARE
--  CURSOR 커서이름 IS SQL문;  :커서 선언
--BEGIN
--  OPEN 커서이름;             :커서 열기
--  FETCH 커서이름 INTO 변수;   :커서로부터 읽어온 데이터를 사용
--  CLOSE 커서이름;             :커서 닫기
--END;

--하나의 행만 조회되는 경우 VS SELECT INTO
    SELECT deptno, dname, loc INTO V_DEPT
    FROM dept
    WHERE deptno = 40;


SET SERVEROUTPUT ON;
DECLARE
    V_DEPT DEPT%ROWTYPE;
    
    --명시적 커서 선언'
    CURSOR C1 IS 
    SELECT deptno, dname, loc
    FROM dept
    WHERE deptno = 40;
BEGIN
    --커서열기
    OPEN C1;
    --커서로부터 읽어온 데이터 사용
    FETCH C1 INTO V_DEPT;
    DBMS_OUTPUT.PUT_LINE('deptno : ' || V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('dname : ' || V_DEPT.dname);
    DBMS_OUTPUT.PUT_LINE('loc : ' || V_DEPT.loc);
    --커서 닫기
    CLOSE C1;
    
END;
/