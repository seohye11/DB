CREATE TABLE empidx
AS
SELECT * 
FROM emp;-- empidx ���̺� ����

SELECT * FROM empidx;--����Ȯ��

CREATE INDEX idx_empidx_empno
ON empidx (empno);-- index ����

SELECT t1.table_name,
       t1.index_name,
       t1.uniqueness,
       t1.index_type
FROM user_indexes t1
WHERE t1.table_name = 'EMPIDX'
;--index���� Ȯ��