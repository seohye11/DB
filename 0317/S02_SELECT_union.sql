--UNION : �� ������ ����� ���ļ� ���, �ߺ� ���� �����ϰ� ����
-- col studno for 9999 -> ���� 4�ڸ�
-- col name for a15 -> �ƽ�Ű 15�ڸ�
--SELECT studno, name, deptno1
--FROM student
--WHERE deptno1 = 101
--;

--desc professor;
--SELECT profno, name, deptno
--FROM professor
--WHERE deptno = 101
--;

SELECT studno, name, deptno1,1
FROM student
WHERE deptno1 = 101
UNION 
SELECT profno, name, deptno,2
FROM professor
WHERE deptno = 101
;
