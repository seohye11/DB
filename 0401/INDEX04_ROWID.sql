--ROWID : ����Ŭ���� �������� �ּ�
SELECT ROWID,--�ּ���ȸ
       empno,
       ename
FROM emp;

SELECT ROWID,
       empno,
       ename
FROM emp
WHERE ROWID = 'AAAR9ZAAHAAAACVAAF';--rowid�� ������ ��ȸ

--AAAR9Z(�����Ϳ�����Ʈ ��ȣ)AAH(���Ϲ�ȣ)AAAACV(BLCOK��ȣ)AAF(ROW��ȣ)