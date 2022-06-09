--BITMAP INDEX
-- : ������ ���� ������ ���� ������ �����Ͱ� ���� ��� �ַ� ���
--   �������� ���淮�� ���ų� ����� �Ѵ�
--   OLAPȯ�濡�� �ַ� ���
--   � �����Ͱ� ��� �ִٶ�� ����(MAP)�� bit�� ǥ��
--   �� � �����Ͱ� �����ϴ� ���� 1�� ǥ���ϰ� �ش� �����Ͱ� ���� ���� 0���� ǥ��
--CREATE BITMAP INDEX �ε�����
--ON ���̺��̸�(�÷���1)

--�ε����� ���ǻ���
--1)DML�� ���(DML�� �߻��ϴ� ���̺��� �ε����� �ּ������� �۰� ������ ��)
--  (INDEX�� ��Ʈ�ż� �����Ǳ� ������ ���̺� �����Ͱ� �ԷµǸ� �ε������� �߰��ž� ��)
--delete : index�� delete�� ���� ��� �������� ǥ��(�ε���rebuild)
--update : update��� ������ �ε������� ����(delete���� insert���� ���ϰ� ���ϴ�)

--�پ��� �ε��� Ȱ��
--STEP1. ������̺��� ������ ���̺� ����
CREATE TABLE new_emp4(
    no NUMBER,
    name VARCHAR2(10),
    sal NUMBER
);--���̺� ����

INSERT INTO new_emp4 VALUES(1000,'SMITH',300);
INSERT INTO new_emp4 VALUES(1001,'ALLEN',250);
INSERT INTO new_emp4 VALUES(1002,'KING',430);
INSERT INTO new_emp4 VALUES(1003,'BLACK',220);
INSERT INTO new_emp4 VALUES(1004,'JAMES',620);
INSERT INTO new_emp4 VALUES(1005,'MILLER',2000);--�����ͻ���

SELECT * FROM new_emp4;--Ȯ��

COMMIT;

--STEP2. name�÷��� �ε��� ����
CREATE INDEX idx_newemp4_name
ON new_emp4(name ASC);

--STEP3. �ε����� ������� ���� ���·� ��ȸ
SELECT no, name, sal
FROM new_emp4
;

--STEP4. �ε����� ����Ͽ� ��ȸ
SELECT no, name, sal
FROM new_emp4
WHERE name > '0'
;
