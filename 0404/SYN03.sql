--PUBLIC SYNONYM Á¶È¸
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM dba_synonyms t1
WHERE t1.table_name = 'DEPT'
;