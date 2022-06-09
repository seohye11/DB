--MERGE INTO TABLE1
--USING TABLE2
--ON(병합조건)
--WHEN MATCHED THEN
--     UPDATE SET 업데이트 내용 or DELETE WHERE 조건
--WHEN NOT MATCHED THEN
--     INSERT VALUES(데이터)

INSERT INTO sawon (
    empno,
    ename,
    hiredate,
    deptno
) VALUES (
    :v0,
    :v1,
    sysdate,
    :v3
);

SELECT * 
FROM sawon;

--동일 테이블에 INSERT / UPDATE
--(처리 테이블과 조건이 정해져 있어 UPDATE,INSERT조건과 테이블이 없음)
MERGE INTO sawon ta
USING (SELECT :empno AS empno,
              :ename AS ename,
              SYSDATE AS hiredate,
              :deptno AS deptno
       FROM dual
)tb
ON(ta.empno = tb.empno)--되도록 pk값 사용
WHEN MATCHED THEN--on조건 매칭일 때 update
UPDATE SET ta.ename = tb.ename,
           ta.hiredate = tb.hiredate,
           ta.deptno = tb.deptno
WHEN NOT MATCHED THEN--on조건 매칭 안될 때 insert
INSERT (ta.empno,ta.ename,ta.hiredate,ta.deptno) 
VALUES (tb.empno,tb.ename,tb.hiredate,tb.deptno);

--
SELECT * 
FROM sawon;