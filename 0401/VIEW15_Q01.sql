--1. Professor ���̺�� department ���̺��� �����Ͽ� ������ȣ�� �����̸�, 
--�Ҽ� �а��̸��� ��ȸ�ϴ� view �� �����ϼ���. 
--View �̸��� v_prof_dept2 �� �ϼ���.

CREATE OR REPLACE VIEW v_prof_dept2
AS(SELECT t1.profno,
          t1.name,
          t2.dname
   FROM professor t1, department t2
   WHERE t1.deptno = t2.deptno)
WITH READ ONLY--�б� ���� ��
;

SELECT * FROM v_prof_dept2;