--UNIQUE INDEX
-- : �ε����� ����� �÷��� �ߺ��Ǵ� �����Ͱ� ����
--unique index�� ������ ������ Ȥ�� ���� �ߺ��� ���� �����ϴ���
--���Ŀ� �ߺ��� ���� �Էµ� ���ɼ��� �ִ� �÷����� ���� �� ����

--CREATE UNIQUE INDEX �ε�����
--ON ���̺� �̸�(�÷� ASC|DESC, �÷� ASC|DESC)
DESC dept2;
SELECT * FROM dept2;

--dept2���̺� dname�� unique index����
CREATE UNIQUE INDEX idx_dept2_dname
ON dept2(dname); --�ε��� ����

INSERT INTO dept2 
VALUES(9100,'temp01','1006','Seoul Branch Office');

--dname �ߺ��� �߰��غ���
INSERT INTO dept2 
VALUES(9101,'temp01','1006','Seoul Branch Office');
--> ���Ἲ ���� ����(SCOTT.IDX_DEPT2_DNAME)�� ����˴ϴ�

--unique index�� ������ ������ Ȥ�� ���� �ߺ��� ���� �����ϴ���
--���Ŀ� �ߺ��� ���� �Էµ� ���ɼ��� �ִ� �÷����� ���� �� ����