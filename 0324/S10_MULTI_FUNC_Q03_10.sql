SELECT L_DATE AS "��������",
       L_CODE AS "���������ڵ�",
       L_QTY AS "����Ǽ�",
       L_TOTAL AS "�����Ѿ�",
       SUM(L_TOTAL)OVER(ORDER BY L_DATE) AS "��������ݾ�"
FROM loan
WHERE L_STORE = 1000
;