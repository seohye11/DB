--REPLACE�Լ� : Ư�� ���ڿ� �����Ϳ� ���Ե� ���ڸ� �ٸ� ���ڷ� ��ü�� ��� ���
SELECT '010-1234-5678' as REPALACE_BEFORE,
       REPLACE('010-1234-5678','-',' ') AS REP,
       REPLACE('010-1234-5678','-') AS REP
FROM dual
;