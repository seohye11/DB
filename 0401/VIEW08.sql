--���̺� ����
CREATE TABLE o_table(
    a NUMBER,
    b NUMBER
);

--VIEW����
CREATE OR REPLACE VIEW view01
AS(SELECT a, b
   FROM o_table
);

--VIEW�� ���� �Է�
INSERT INTO view01 VALUES (1,2);

--o_table��ȸ
SELECT *
FROM o_table
;