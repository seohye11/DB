--2018-07-13 23:56:28

SELECT STD_DATE,
       ROUND(STD_DATE,'CC') AS ROUND_CC, --���� �� 2�ڸ� 2018�̸� 2050�����̹Ƿ� 2001��
       ROUND(STD_DATE,'YYYY') AS ROUND_YYYY, --2018-07-01�������� �ݿø�
       ROUND(STD_DATE,'Q') AS ROUND_Q, --�� �б��� 2��° �� 16�ϱ��� �ݿø�
       ROUND(STD_DATE,'DDD') AS ROUND_DDD, --�ش����� ���� ���� �ݿø�
       ROUND(STD_DATE,'HH') AS ROUND_HH
FROM(
SELECT TO_DATE('2018-07-13 23:56:28','YYYY-MM-DD HH24:MI:SS') STD_DATE
FROM dual
)
;