--��ü ������ ����
--loc�� ��� SEOUL����
SELECT *
FROM dept_temp2;

UPDATE dept_temp2
SET LOC = 'SEOUL';

SELECT *
FROM dept_temp2;

ROLLBACK;
