SELECT L_DATE AS "��������",
       L_CODE AS " ���������ڵ�",
       L_QTY AS "����Ǽ�",
       L_TOTAL AS "�����Ѿ�",
       SUM(l_total)OVER(PARTITION BY l_code ORDER BY l_total) AS "��������ݾ�"
FROM loan
WHERE L_STORE = 1000
;