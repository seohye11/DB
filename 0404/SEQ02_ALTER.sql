--������ ����

--ALTER SEQUENCE ������ �̸�
--[INCREMENT BY n] : ������ ��ȣ�� ���� ������ �⺻�� 1
--[START WITH n] : ������ ���۹�ȣ �⺻���� 1 ->> ���� �Ұ���->���x
--[MAXVALUE n | NOMAXVALUE] : ���� ������ ������ �ִ밪(nomaxvalue 10��27��)
--[MINVALUE n | NOMINVALUE] : ���� ������ ������ �ּҰ�(nominvalue ���������̸� 1,���������̸� 10��-26��)
--[CYCLE | NOCYCLE] : ������ ��ȣ�� ��ȯ ����� ������ ����
--[CACHE n | NOCACHE] : ������ ���� �ӵ��� �����ϱ� ���� ĳ�� ���� ����

ALTER SEQUENCE seq_dept_sequence
INCREMENT BY 3
MAXVALUE 99
MINVALUE 0
CYCLE
CACHE 2;

SELECT * FROM user_sequences;

INSERT INTO dept_sequence VALUES(seq_dept_sequence.NEXTVAL,'DETABASE','SEOUL');
SELECT * FROM dept_sequence;