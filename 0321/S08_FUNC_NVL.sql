--NULLó�� �Լ�

SELECT empno,
       ename,
       sal,
       comm,
       (sal*12)+comm as salary01,
       (sal*12)+NVL(comm,0) as salary02 --NVL(comm,0) -> comm�� null���� 0���� ġȯ
FROM emp
;
