--SUM()OVER�� Ȱ���� ����

--P_DATE	VARCHAR2(8 BYTE)	No
--P_CODE	NUMBER	No
--P_QTY	NUMBER	Yes
--P_TOTAL	NUMBER	Yes
--P_STORE	VARCHAR2(5 BYTE)	Yes

--1)  panmae ���̺��� ����Ͽ� 1000 �� �븮���� �Ǹ� ������ ����ϵ� �Ǹ�����, 
--��ǰ�ڵ�, �Ǹŷ�, ���� �Ǹűݾ��� �Ʒ��� ���� ����ϼ���.

SELECT p_date,
       p_code,
       p_qty,
       p_total,
       SUM(p_total) OVER(ORDER BY p_total) "TOTAL"
FROM panmae
WHERE P_STORE = 1000
;