--��¥ ������ + ���� : ��¥�����ͺ��� ���ڸ�ŭ �� �� �� ���� ��¥
--��¥ ������ - ���� : ��¥�����ͺ��� ���ڸ�ŭ �� �� �� ���� ��¥
--��¥ ������ - ��¥ ������ : �� ��¥ ������ ���� �� �� ����
--��¥ ������ + ��¥ ������ : ����Ұ�, �������� ����

--SYSDATE : �ý����� ���� ��¥�� �ð� (��¥)

SELECT SYSDATE
FROM dual
;
--��¥ FORMAT�����ϱ�(1ȸ��)
ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR-MM-DD,HH24:MI:SS';

SELECT SYSDATE
FROM dual
;

SELECT SYSDATE + 1 AS tomorrow,
       SYSDATE  AS CURR_DATE,
       SYSDATE - 1 AS yesterday
FROM dual
;