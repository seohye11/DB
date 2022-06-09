SELECT deptno,
       ename,
       sal,
       SUM(sal)OVER() AS TOTAL,
       ROUND(sal/SUM(sal)OVER()*100,2) AS "%",
       ROUND(RATIO_TO_REPORT(sal) OVER()*100,2) AS "$2"
FROM emp
ORDER BY sal DESC
;

--RATIO_TO_REPORT �Լ� : �־��� �׷쿡 ���� expr ���� ���� �������� 
--�� �ο��� ����� ������ ��ȯ�ϴ� �Լ���