--MERGE INTO TABLE1
--USING TABLE2
--ON(��������)
--WHEN MATCHED THEN
--     UPDATE SET ������Ʈ ���� or DELETE WHERE ����
--WHEN NOT MATCHED THEN
--     INSERT VALUES(������)

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

--���� ���̺� INSERT / UPDATE
--(ó�� ���̺�� ������ ������ �־� UPDATE,INSERT���ǰ� ���̺��� ����)
MERGE INTO sawon ta
USING (SELECT :empno AS empno,
              :ename AS ename,
              SYSDATE AS hiredate,
              :deptno AS deptno
       FROM dual
)tb
ON(ta.empno = tb.empno)--�ǵ��� pk�� ���
WHEN MATCHED THEN--on���� ��Ī�� �� update
UPDATE SET ta.ename = tb.ename,
           ta.hiredate = tb.hiredate,
           ta.deptno = tb.deptno
WHEN NOT MATCHED THEN--on���� ��Ī �ȵ� �� insert
INSERT (ta.empno,ta.ename,ta.hiredate,ta.deptno) 
VALUES (tb.empno,tb.ename,tb.hiredate,tb.deptno);

--
SELECT * 
FROM sawon;