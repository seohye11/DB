--TO_DATE : ���ڵ����͸� ��¥�����ͷ� ��ȯ�ϴ� �Լ�
--TO_DATE('����') / TO_DATE('����','��¥����')

ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR/MM/DD';

SELECT SYSDATE,
       TO_DATE('2022/03/21'),
       TO_DATE('2022-03-21','YYYY-MM-DD') AS TO_DATE01,
       TO_DATE('20220321','YYYYMMDD') AS TO_DATE02
FROM dual
;