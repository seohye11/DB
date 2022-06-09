--인덱스 조회하기
--USER_INDEXES, USER_IND_COLUMNS

SELECT t1.table_name,
       t1.column_name,
       t1.index_name
FROM USER_IND_COLUMNS t1
WHERE t1.table_name = 'DEPT2'
;

--USER_INDEXES
SELECT t1.table_name,
       t1.index_name
FROM user_indexes t1
WHERE t1.table_name = 'DEPT2'
;
