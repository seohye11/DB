--��ü ���� �ο�
--GRANT [����/ALL PRIVILEGES]
--ON[��Ű��.��ü�̸�]
--TO[������̸�/��/PUBLIC]
--[WITH GRANT OPTION]

--temp -> GRANT SELECT -> GRANT INSERT

CREATE TABLE temp(
    col1 VARCHAR(20),
    cli2 VARCHAR2(20)
);--���̺� ����

--temp SELECT ������ ORCLSTUDY�� �ο�
GRANT SELECT ON temp TO ORCLSTUDY;

--temp INSERT ������ ORCLSTUDY�� �ο�
GRANT INSERT ON temp TO ORCLSTUDY;

--SELECT, INSERT ���� �Ѳ����� �ο�
GRANT SELECT, INSERT ON temp TO ORCLSTUDY;

SELECT *
FROM temp;

