--HAVING : GROUP BY ���� ������ �� �� ���
--SELECT ���� GROUP BY���� ������ ���� ��� ����
--�׸��� GROUP BY���� ���� �׷�ȭ�� ��� ���� ������ �����ϴµ� ���
--SELECT
--FROM
--WHERE
--GROUP BY �׷�ȭ�� ������(����������)
--HAVING ��� �׷��� �����ϴ� ���ǽ�
--ORDER BY       =>where���� ��� ��� ���� �����ϰ� 
--                 HAVING���� �׷�ȭ�� ����� ��¿��� �����Ѵ�
               

--emp���̺��� ��� �޿��� 2000���� �̻��� �μ��� �μ���ȣ ��� �޿� ���
SELECT deptno, AVG(NVL(sal,0))
FROM emp
WHERE AVG(NVL(sal,0)) >= 2000
GROUP BY deptno
;--WHERE ��� �ȵ� ����

SELECT deptno, AVG(NVL(sal,0))
FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >= 2000
;