--LISTAGG�÷��� ROW����� 400byte�̻��� ǥ�� �Ұ�
--LISTAGG(��ĥ�÷�, ������)WITHIN GROUP(ORDER BY �����÷�)
SELECT deptno,
       LISTAGG(ename,',') WITHIN GROUP(ORDER BY ename) as list_agg
FROM emp
GROUP BY deptno
ORDER BY deptno
;