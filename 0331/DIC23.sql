--static dictionary VS dynamic dictionary
--static_table ������ �Է�
CREATE TABLE static_table(
    no NUMBER
);

--static dictionary��ȸ  :������ �Է��� �ݿ��Ǿ� ���� ����
BEGIN
    FOR i IN 1..1000 loop
        INSERT INTO static_table VALUES (i);
    END loop;
    COMMIT;
END;
/
SELECT COUNT(*) FROM static_table;

--��ųʸ��� �������� update�ϸ� �������� �����Ͱ� ���δ�
SELECT t1.num_rows,
       t1.blocks,
       t1.table_name
FROM user_tables t1
WHERE t1.table_name = 'STATIC_TABLE'
;

ANALYZE TABLE static_table COMPUTE STATISTICS; --���� update

SELECT t1.num_rows,
       t1.blocks,
       t1.table_name
FROM user_tables t1
WHERE t1.table_name = 'STATIC_TABLE'
;