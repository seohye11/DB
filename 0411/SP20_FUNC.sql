--�Լ�(function) : ����Ŭ �Լ��� �����Լ�, ����� ���� �Լ�

--CREATE OR REPLACE FUNCTION �Լ��̸�
--[(
--    �Ķ�����̸�1 [IN] �ڷ���1,
--    �Ķ�����̸�2 [IN] �ڷ���2,  
--    
--    �Ķ�����̸�N [IN] �ڷ���N
--)]
--RETURN �ڷ���
--IS | AS
--    �����
--BEGIN
--    �����
--    RETURN(��ȯ��);
--EXCEPTION
--    ����ó��
--END[�Լ��̸�];

CREATE OR REPLACE FUNCTION func_aftertax(
    sal IN NUMBER
)
RETURN NUMBER
IS
    tax NUMBER := 0.05;
BEGIN
    RETURN ROUND(sal - (sal * tax));
END func_aftertax;
/