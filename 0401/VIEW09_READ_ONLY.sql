--�б� ���� view����
--VIEW2����
CREATE OR REPLACE VIEW view2
AS (SELECT A,B FROM o_table)
WITH READ ONLY;

--������ �Է�
INSERT INTO view2 VALUES(1,2);
--�б� ���� �信���� DML �۾��� ������ �� �����ϴ�.