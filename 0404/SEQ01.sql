--������(Sequence)
-- : ���ӵ� ��ȣ�� ������ �ʿ��� ��츦 ���� ���, ���ӵ� ��ȣ �ڵ� ������

--CREATE SEQUENCE ������ �̸�
--[INCREMENT BY n] : ������ ��ȣ�� ���� ������ �⺻�� 1
--[START WITH n] : ������ ���۹�ȣ �⺻���� 1
--[MAXVALUE n | NOMAXVALUE] : ���� ������ ������ �ִ밪(nomaxvalue 10��27��)
--[MINVALUE n | NOMINVALUE] : ���� ������ ������ �ּҰ�(nominvalue ���������̸� 1,���������̸� 10��-26��)
--[CYCLE | NOCYCLE] : ������ ��ȣ�� ��ȯ ����� ������ ����
--[CACHE n | NOCACHE] : ������ ���� �ӵ��� �����ϱ� ���� ĳ�� ���� ����

CREATE TABLE dept_sequence
AS
SELECT * 
FROM dept
WHERE 1 = 2; --���̺� ����

DESC dept_sequence; --���̺� ���� Ȯ��

--������ ����
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;

SELECT * 
FROM user_sequences;--������ ���� Ȯ��

--dept_sequence���̺��� deptno�� ������ �̿��ؼ� �Է�
--seq_dept_sequence.NEXTVAL : ��ȣ ��������
INSERT INTO dept_sequence VALUES(seq_dept_sequence.NEXTVAL,'DETABASE','SEOUL');

SELECT * FROM dept_sequence;--������ ���� Ȯ��

--���� ������ ��ȣ
SELECT seq_dept_sequence.CURRVAL FROM dual;

INSERT INTO dept_sequence VALUES(seq_dept_sequence.NEXTVAL,'DETABASE','SEOUL');
SELECT * FROM dept_sequence;