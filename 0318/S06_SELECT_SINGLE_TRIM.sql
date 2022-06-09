--Ư�� ���ڸ� ����� TRIM, LTRIM, RTRIM
--���ڿ� ������ ������ Ư�� ���ڸ� ����� ���� ����Ѵ�
--TRIM ([�����ɼ�][������ ���� ����] FROM [���� ���ڿ� ������ �ʼ�]);
--LEADING : ���� ���� ����
--TRAILING : ������ ���� ����
--BOTH : ���� ���� ����

SELECT
    '['|| TRIM(' __Oracle__ ')|| ']' AS trim,
    '['|| TRIM(LEADING FROM ' __Oracle__ ')|| ']' AS LEADING,
    '['|| TRIM(TRAILING FROM ' __Oracle__ ')|| ']' AS TRAILING,
    '['|| TRIM(BOTH FROM ' __Oracle__ ')|| ']' AS BOTH
FROM dual
;