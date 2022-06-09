CREATE OR REPLACE VIEW empidx_over15k
AS(SELECT t1.empno,
          t1.ename,
          t1.job,
          t1.deptno,
          t1.sal,
          CASE WHEN t1.comm IS NULL THEN 'X'
            ELSE 'O'
          END comm
   FROM empidx t1
   WHERE t1.sal > 1500)
WITH READ ONLY
;