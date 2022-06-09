--emp ���̺��� ��ȸ�Ͽ� empno , ename , sal , LEVEL(�޿����)�� �Ʒ��� ���� ����ϼ���.
--�� �޿������ sal �� �������� 1 - 1000 �̸� Level 1 
--, 1001 - 2000 �̸� Level 2 
--, 2001 - 3000 �̸� Level 3 
--, 3001 - 4000 �̸� Level 4 
--, 4001 ���� ������ Level 5 �� ����ϼ���.

SELECT empno,
       ename,
       sal,
       CASE WHEN sal BETWEEN 1 AND 1000 THEN 'Level 1'
            WHEN sal BETWEEN 1001 AND 2000 THEN 'Level 2'
            WHEN sal BETWEEN 2001 AND 3000 THEN 'Level 3'
            WHEN sal BETWEEN 3001 AND 4000 THEN 'Level 4'
            WHEN sal >= 4001 THEN 'Level 5'
        END AS "LEVEL"
FROM emp
ORDER BY 4 DESC
;