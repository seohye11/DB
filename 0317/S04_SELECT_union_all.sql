--UNION : �� ������ ����� ���ļ� ���, �ߺ� ���� �����ϰ� ����
-- 9411 James Seo �ߺ�
SELECT studno, name
FROM student
WHERE deptno1 = 101
UNION
SELECT studno, name
FROM student
WHERE deptno2 = 201
;