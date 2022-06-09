--FOR LOOP문 : 여러 개의 행이 조회되는 경우
--FOR 루푸 인덱스 IN 커서이름 LOOP
--  결과 행 별로 반복 수행;
--END LOOP;

SET SERVEROUTPUT ON;
DECLARE
    CURSOR C1 IS
    SELECT deptno, dname, loc
    FROM dept;
BEGIN
    --커서 for loop(자동 open,fetch, close)
    FOR c1_rec IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE('deptno : '|| c1_rec.deptno ||' / '||
                             'dname : '|| c1_rec.dname ||' / '||
                             'loc : '|| c1_rec.loc);
    END LOOP;
END;
/