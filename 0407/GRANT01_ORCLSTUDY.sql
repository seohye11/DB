--��ü ���� �ο�
--GRANT [����/ALL PRIVILEGES]
--ON[��Ű��.��ü�̸�]
--TO[������̸�/��/PUBLIC]
--[WITH GRANT OPTION]

SELECT *
FROM scott.temp;--scott���� ���� ���̺� ORCLSTUDY�������� ��ȸ

INSERT INTO scott.temp VALUES('TEST','FROM ORCLSTUDY');

SELECT *
FROM scott.temp;

COMMIT;