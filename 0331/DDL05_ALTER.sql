--ALTER(����)
--�̹� ������ ����Ŭ ������ ���̽� ��ü�� ������ �� ���
--1) �� ���� �߰�, ����, ���� �ڷ��� �Ǵ� ���� ����
CREATE TABLE dept6
AS
SELECT dcode, dname
FROM dept2
WHERE dcode IN (1000,1001,1002);--���̺� ����(CTAS)

SELECT * FROM dept6;--���̺� ���� Ȯ��

ALTER TABLE dept6
ADD(locations VARCHAR2(10));--�÷� �߰�

SELECT * FROM dept6;--�÷� �߰� Ȯ��

ALTER TABLE dept6
ADD(location2 VARCHAR2(10) DEFAULT 'SEOUL');--DEFAULT �Ӽ����� 
--                                            �÷��߰�
SELECT * FROM dept6;--�÷� �߰� Ȯ��

