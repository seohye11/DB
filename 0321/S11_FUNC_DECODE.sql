--DECODE�Լ� : JAVA��� ��� ������� �б⹮�� if�� ����Ŭ�� ������ �Լ�
-- ����Ŭ ���� �Լ�
--DECODE(A,B,'1',NULL) A�� B�̸� '1', ������NULL��������

SELECT deptno,
       name,
       DECODE(deptno, 101, 'Compuer Emgineering','NULL') AS DNAME
FROM professor
;
