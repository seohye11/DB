--Ŀ���� ����� �Ķ���� �Է¹ޱ�

SET SERVEROUTPUT ON;
DECLARE
    --�μ� ��ȣ ����� ����
    V_DEPTNO DEPT.deptno%TYPE;
    
    --Ŀ�� ����
    CURSOR C1(p_deptno DEPT.deptno%TYPE) IS
    SELECT deptno, dname, loc
    FROM dept
    WHERE deptno = p_deptno;
BEGIN
    V_DEPTNO := &INPUT_DEPTNO;
    
    --Ŀ�� for loop(�ڵ� open,fetch, close)
    FOR C1_REC IN C1(V_DEPTNO) LOOP
        DBMS_OUTPUT.PUT_LINE(C1_REC.DEPTNO||', '||C1_REC.dname
                             ||', '||C1_REC.loc);
    END LOOP;
END;
/