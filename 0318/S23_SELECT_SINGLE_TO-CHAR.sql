--TO_CHAR : ���� �Ǵ� ��¥ �����͸� ���ڷ� ��ȯ
--TO_CHAR(��¥������,'��µǱ� ���ϴ� ��������')

--TO_NUMBER : ���ڵ����͸� ���ڷ� ��ȯ
--TO_DATE : ���ڵ����͸� ��¥�� ��ȯ
SELECT SYSDATE,
       TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS') AS TO_CHAR_FORMAT,
       TO_CHAR(SYSDATE,'MONTH') AS "MONTH",
       TO_CHAR(SYSDATE,'DDD') AS "DDD"
FROM dual
;