--�����÷�(11g�߰�)
--STEP1. ���� �÷��� ������ ���̺� ����
CREATE TABLE vt1(
    COL1 NUMBER,
    COL2 NUMBER,
    COL3 NUMBER GENERATED ALWAYS AS (COL1 + COL2)
);

--STPE2. ���̺� ������ �Է�(�����÷��� ���� ������ �Է� �� ��)
INSERT INTO vt1 VALUES (1,2,3);--SQL ����:INSERT �۾��� ���� ������ 
--                                       ������ �ʽ��ϴ�.

INSERT INTO vt1(col1,col2) VALUES (1,2);

--STEP3. �Էµ� ������ ��ȸ
SELECT * FROM vt1;

--STEP4. �������� ���� (col1�� ���� 1���� 5�� ����)
UPDATE vt1
SET col1 = 5;

SELECT * FROM vt1;