--2) panmae ���̺��� ����Ͽ� 1000 �� �븮���� �Ǹ� ������ ��ǰ �ڵ庰�� �з��� �� 
--�Ǹ�����, ��ǰ�ڵ�, �Ǹŷ�, �Ǹűݾ�, �����Ǹűݾ��� �Ʒ��� ���� ����ϼ���.

SELECT p_date,
       p_code,
       p_qty,
       p_total,
       SUM(p_total) OVER(PARTITION BY p_code ORDER BY p_total) "TOTAL"
FROM panmae
WHERE P_STORE = 1000
;