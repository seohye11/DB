--������ ����(Data Dictionary)�̶� ��κ� �б� �������� �����Ǵ� 										
--���̺� �� ����� �������� �����ͺ��̽� ���ݿ� ���� ������ ���� �Ѵ�.

--���̺��� ���� �÷� ������ ��ȸ
SELECT column_name,
       data_type,
       data_default
FROM user_tab_columns
WHERE table_name = 'VT1'
ORDER BY column_id;