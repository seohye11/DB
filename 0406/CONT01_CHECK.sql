--������ ���¿� ������ ���ϴ� CHECK
-- : ���� ������ �� �ִ� ���� ���� �Ǵ� ������ ������ �� ���

--��й�ȣ ���̸� 3�� �̻� �Է��ϵ��� ���̺��� ����
CREATE TABLE table_check(
    login_id VARCHAR2(20)
    CONSTRAINT tblch_loginid_pk PRIMARY KEY,
    login_pwd VARCHAR2(20) 
    CONSTRAINT tblch_loginpwd_ch CHECK(LENGTH(login_pwd) > 3),
    tel VARCHAR2(20)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN ('TABLE_CHECK');

--�����ͻ���
INSERT INTO table_check (
    login_id,
    login_pwd,
    tel
) VALUES (
    'TEST_ID',
    '123',--CHECK(LENGTH(login_pwd)>3 : 3�ڸ� �ʰ� ����
    '010-1234-5678'
);--üũ ��������(SCOTT.TBLCH_LOGINPWD_CH)�� ����Ǿ����ϴ�

--�����ͻ���
INSERT INTO table_check (
    login_id,
    login_pwd,
    tel
) VALUES (
    'TEST_ID',
    '1234',--CHECK(LENGTH(login_pwd)>3 : 3�ڸ� �ʰ� ����
    '010-1234-5678'
);