--Ư�� ���ڸ� ����� TRIM, LTRIM, RTRIM
--���ڿ� ������ ������ Ư�� ���ڸ� ����� ���� ����Ѵ�
--TRIM ([�����ɼ�][������ ���� ����] FROM [���� ���ڿ� ������ �ʼ�]);
--LEADING : ���� ���� ����
--TRAILING : ������ ���� ����
--BOTH : ���� ���� ����

SELECT
    '['|| TRIM('_ _Oracle_ _')|| ']' AS trim,
    '['|| TRIM(LEADING '_' FROM '_ _Oracle_ _')|| ']' AS LEADING,
    '['|| TRIM(TRAILING '_' FROM '_ _Oracle_ _')|| ']' AS TRAILING,
    '['|| TRIM(BOTH '_' FROM '_ _Oracle_ _')|| ']' AS BOTH
FROM dual
;