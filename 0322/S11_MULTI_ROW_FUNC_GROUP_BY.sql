--SELECT
--FROM
--WHERE
--GROUP BY �׷�ȭ�� ������(����������)
--ORDER BY
--GROUP BY���� ����ϴ� ���� ������ ���� ����
--���� ������ ���� ��׷��� ������ �� ���� ������ ���� �ұ׷�
--GROUP BY������ ��Ī�� �νĵ��� �ʴ´� �� �� �̸��̳� ������� �״�� �������־�� �Ѵ�.

--�μ��� ������ ��� �޿�
SELECT deptno, job,AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;
