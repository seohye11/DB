--NEXT_DAY : �־��� ��¥�� �������� ���ƿ��� ��¥ ��� (��¥)
--LAST_DAY : �־��� ��¥�� ���� ���� ������ ��¥ (��¥)

SELECT SYSDATE,
       NEXT_DAY(SYSDATE,'������') AS "NEXT_DAY_��",
       LAST_DAY(SYSDATE) AS "3MONTH_LAST"
FROM dual
;