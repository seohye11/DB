--���̺� ������ �߰��ϴ� INSERT��
--INSERT INTO table[(�÷�1,�÷�2,�÷�3,...)]
--VALUES(value1,value2,value3,...);

--DESC dept_temp;

--�μ���ȣ : 50
--�μ��� : 'DATABASE'
--���� : 'SEOUL'

INSERT INTO dept_temp (deptno, dname, loc)
VALUES (50,'DATABASE','SEOUL');

--Ȯ��
COMMIT;

SELECT *
FROM dept_temp;

ROLLBACK;