SET SERVEROUTPUT ON;
DECLARE
    v_emp_row emp%ROWTYPE;
    
    CURSOR C1 IS
    SELECT empno, ename, job,mgr, hiredate, sal, comm, deptno 
    FROM emp;
    
BEGIN
    OPEN c1;
    LOOP
     FETCH C1 INTO v_emp_row;  
        DBMS_OUTPUT.PUT_LINE('empno : '|| v_emp_row.empno||', '||
                             'ename : '|| v_emp_row.ename||', '||
                             'job : '|| v_emp_row.job||', '||
                             'sal : '|| v_emp_row.sal||', '||
                             'deptno : '|| v_emp_row.deptno);
    EXIT WHEN C1%NOTFOUND;
    END LOOP;
    CLOSE C1;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('SQLCODE : '|| TO_CHAR(SQLCODE));  
      DBMS_OUTPUT.PUT_LINE('SQLERRM : '|| SQLERRM);  
END;
/


SET SERVEROUTPUT ON;
DECLARE
    v_emp_row emp%ROWTYPE;
    
    CURSOR C1 IS
    SELECT empno, ename, job,mgr, hiredate, sal, comm, deptno 
    FROM emp;
    
BEGIN
    FOR C1_REC IN C1 LOOP 
        DBMS_OUTPUT.PUT_LINE('empno : '|| C1_REC.empno||', '||
                             'ename : '|| C1_REC.ename||', '||
                             'job : '|| C1_REC.job||', '||
                             'sal : '|| C1_REC.sal||', '||
                             'deptno : '|| C1_REC.deptno);
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('SQLCODE : '|| TO_CHAR(SQLCODE));  
      DBMS_OUTPUT.PUT_LINE('SQLERRM : '|| SQLERRM);  
END;
/