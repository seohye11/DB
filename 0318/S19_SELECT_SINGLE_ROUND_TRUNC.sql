--ROUND : �־��� ��¥ �ݿø� (��¥)
--������ �������� ��ǰ������ ������ �Ǿ����� ���Ϲ��,
--�׷��� ������ ������ ���
--TRUNC : �־��� ��¥ ���� (��¥)
--��������

SELECT SYSDATE,
       ROUND(SYSDATE) AS "ROUND_SYSDATE",
       TRUNC(SYSDATE) AS "ROUND_SYSDATE"
FROM dual
;