--MERGE : ���� ���̺��� �����͸� ��ġ�� ������ �ǹ�

--MERGE INTO TABLE1
--USING TABLE2
--ON(��������)
--WHEN MATCHED THEN
--     UPDATE SET ������Ʈ ���� or DELETE WHERE ����
--WHEN NOT MATCHED THEN
--     INSERT VALUES(������)

--TABLE charge_01,chatge_02,ch_total �����
CREATE TABLE charge_01(
    u_date VARCHAR2(6),
    cust_no NUMBER,
    u_time NUMBER,
    charge NUMBER
);

DESC charge_01;--���̺����Ȯ��

CREATE TABLE charge_02(
    u_date VARCHAR2(6),
    cust_no NUMBER,
    u_time NUMBER,
    charge NUMBER
);

CREATE TABLE ch_total(
    u_date VARCHAR2(6),
    cust_no NUMBER,
    u_time NUMBER,
    charge NUMBER
);
