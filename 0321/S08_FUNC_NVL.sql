--NULL처리 함수

SELECT empno,
       ename,
       sal,
       comm,
       (sal*12)+comm as salary01,
       (sal*12)+NVL(comm,0) as salary02 --NVL(comm,0) -> comm의 null값만 0으로 치환
FROM emp
;
