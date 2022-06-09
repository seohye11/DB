CREATE TABLE empidx
AS
SELECT * 
FROM emp;-- empidx 抛捞喉 积己

SELECT * FROM empidx;--积己犬牢

CREATE INDEX idx_empidx_empno
ON empidx (empno);-- index 积己

SELECT t1.table_name,
       t1.index_name,
       t1.uniqueness,
       t1.index_type
FROM user_indexes t1
WHERE t1.table_name = 'EMPIDX'
;--index积己 犬牢