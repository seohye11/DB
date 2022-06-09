SELECT A.*
FROM (SELECT ROWNUM AS rnum, TT1.*
      FROM(SELECT t1.empno,
                  t1.ename,
                  t1.sal
           FROM emp t1
           ORDER BY sal
      )TT1
      WHERE ROWNUM <= 10
)A
WHERE rnum >= 1
;