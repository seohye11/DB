--���� ���̺� ������ �뿡�� ����
--1) flashbackȮ��
SELECT object_name,
       original_name,
       createtime
FROM recyclebin;

--2) ����
FLASHBACK TABLE "BIN$uHlKO5txRBitIUKAsEfxUg==$0" TO BEFORE DROP;
--Flashback��(��) �����߽��ϴ�.

SELECT * FROM emp_hw;