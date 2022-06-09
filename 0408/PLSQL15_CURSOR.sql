--커서에 파라미터 사용하기
--CURSOR 커서이름(파라미터 이름 자료형,..)IS
--SELECT...
--dept 테이블의 부서 번호를 10 또는 20번일 때 다른 수행을 하고 싶다면

SET SERVEROUTPUT ON;
DECLARE
    --커서에 입력할 변수
    V_DEPT_ROW DEPT%ROWTYPE;
    
    --명시적 커서 선언
    CURSOR C1 (p_deptno DEPT.deptno%TYPE) IS
    SELECT deptno, dname, loc
    FROM dept
    WHERE deptno = p_deptno;
BEGIN
    --10번 부서용 커서
    OPEN c1(10);
        LOOP
            FETCH C1 INTO V_DEPT_ROW;
            EXIT WHEN c1%NOTFOUND;--더 이상 데이터가 없으면 LOOP종료
            DBMS_OUTPUT.PUT_LINE('10번부서 - deptno : '||V_DEPT_ROW.deptno||', '||
                                            'dname : '||V_DEPT_ROW.dname||', '||
                                            'loc : '||V_DEPT_ROW.loc);
        END LOOP;
        
    CLOSE C1;
        
    --20번 부서용 커서
    OPEN c1(20);
        LOOP
            FETCH C1 INTO V_DEPT_ROW;
            EXIT WHEN c1%NOTFOUND;--더 이상 데이터가 없으면 LOOP종료
            DBMS_OUTPUT.PUT_LINE('20번부서 - deptno : '||V_DEPT_ROW.deptno||', '||
                                            'dname : '||V_DEPT_ROW.dname||', '||
                                            'loc : '||V_DEPT_ROW.loc);
        END LOOP;
        
    CLOSE C1;
END;
/