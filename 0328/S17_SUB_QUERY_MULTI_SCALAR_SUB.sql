--scalar query �׽�Ʈ
--1. 2�� �̻��� ������ ��ȯ�� ��û�ϴ� ��� - ����

SELECT t3.no,
       t3.name,
       (SELECT dname FROM t4 WHERE t3.deptno = t4.deptno)
FROM t3
; --=>error
--ORA-01427: ���� �� ���� ���ǿ� 2�� �̻��� ���� ���ϵǾ����ϴ�.
--01427. 00000 -  "single-row subquery returns more than one row"

UPDATE t4
SET deptno = 400
WHERE dname = 'DDD'
;
COMMIT;

SELECT t3.no,
       t3.name,
       (SELECT dname FROM t4 WHERE t3.deptno = t4.deptno)
FROM t3
;