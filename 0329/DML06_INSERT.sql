--���̺� ��¥ ������ �Է��ϱ�
--emp���̺��� copy�ؼ� emp_temp����, �� �����ʹ� �������� �ʴ´�

CREATE TABLE emp_temp
AS
SELECT * FROM emp
WHERE 1 <> 1; --1��1�� �����ʴ�=>�����͸� �������� �ʰ� ���̺� ������ ����

SELECT * FROM emp_temp;

