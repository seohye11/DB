--�ε����� Ȱ���ؼ� �ּҰ� �ִ밪 ���ϱ�
-- : MIN/MAX�Լ��� ��� �����͸� ���� �÷����� ���� �� �ּ�, �ִ밪�� ����
SELECT MIN(name)
FROM new_emp4; --MIN�Լ� ���

SELECT name
FROM new_emp4
WHERE name > '0'
AND ROWNUM = 1; --INDEX ����ؼ� �ּҰ� ���ϱ�

SELECT MAX(name)
FROM new_emp4; --MAX�Լ� ���

--INDEX ����ؼ� �ִ밪 ���ϱ�
-->oracle hint ���(/*+ INDEX_DESC(���̺� ALIAS �ε�����)*/name
-->(�ε����� asc�����߱� ������ ����Ŭ ��Ʈ����ؼ� desc�� ������)
SELECT /*+ INDEX_DESC(t1 IDX_NEWEMP4_NAME) */name
FROM new_emp4 t1
WHERE name > '0'
AND ROWNUM = 1; 