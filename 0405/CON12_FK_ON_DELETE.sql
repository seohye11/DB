-- * parent ���̺�� �ڽ����̺� ���� ������ ���� ó��
--1) �� ������ ����
--CONSTRAINT[���������̸�]REFERENCES ���� ���̺�(�����÷�)
--ON DELETE CASCADE;

--2)�� �����͸� NULL�� ����
--CONSTRAINT[���������̸�]REFERENCES ���� ���̺�(�����÷�)
--ON DELETE SET NULL;

--STEP1. c_test1, c_test2 ���̺� ����
CREATE TABLE c_test1(
    no NUMBER,
    name VARCHAR2(20),
    deptno NUMBER
);

CREATE TABLE c_test2(
    no NUMBER,
    name VARCHAR2(20)
);

--STEP2. �� ���� ���̺� ���� ������ ����, ������ �Է�
--c_test1_deptno_fk ����Ű ���� ����
ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
;--�� ����Ͽ� ���� ��ġ�ϴ� ���� �Ǵ� �⺻ Ű�� �����ϴ�.
-->�θ�Ű ���� �����ؾ� ��
ALTER TABLE c_test2
ADD CONSTRAINT ctest2_no_uk UNIQUE(no);

ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE CASCADE
;

--������ ����
INSERT INTO c_test2 VALUES (10,'AAA');
INSERT INTO c_test2 VALUES (20,'BBB');
INSERT INTO c_test2 VALUES (30,'CCC');

SELECT * FROM c_test2;

COMMIT;

INSERT INTO c_test1 VALUES (1,'apple',10);
INSERT INTO c_test1 VALUES (2,'banana',20);
INSERT INTO c_test1 VALUES (3,'cherry',30);

SELECT * FROM c_test1;

COMMIT;

INSERT INTO c_test1 VALUES (4,'peach',40);
--���Ἲ ��������(SCOTT.CTEST1_DEPTNO_FK)�� ����Ǿ����ϴ�- �θ� Ű�� �����ϴ�

--on delete cascade ���
DELETE FROM c_test2 WHERE NO = 10;
SELECT * FROM c_test1;
--�θ����̺��� ������ on delete cascade ����ϸ� �ڽ����̺� �����͵� ����

--��ȸ
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('C_TEST1','C_TEST2')
;