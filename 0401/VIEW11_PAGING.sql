--�ζ��� �並 ����� TOP-N SQL
-- : SQL������ ��ȸ������ ����� ����ϴ� ��
--ROWNUM �� ORDER BY
SELECT ROWNUM,
       t1.empno,
       t1.ename
FROM emp t1;

SELECT ROWNUM,
       t1.empno,
       t1.ename,
       t1.sal
FROM emp t1
ORDER BY t1.sal;--���� �ұ�Ģ

SELECT ROWNUM, TT1.*
FROM(SELECT t1.empno,
            t1.ename,
            t1.sal
    FROM emp t1
    ORDER BY sal
)TT1
;--ROWNUM ����� ���->order by ���������� �ۼ�
--ROWNUM �� ORDER BY ���� ���� ORDER BY���ִ� �������� ���������

