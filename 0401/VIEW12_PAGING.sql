SELECT ROWNUM AS rnum, TT1.*
FROM(SELECT t1.empno,
            t1.ename,
            t1.sal
    FROM emp t1
    ORDER BY sal
)TT1
WHERE ROWNUM <= 10
;

SELECT A.*
FROM (SELECT ROWNUM AS rnum, TT1.*
      FROM(SELECT t1.empno,
                  t1.ename,
                  t1.sal
           FROM emp t1
           ORDER BY sal
      )TT1
)A
WHERE rnum BETWEEN 11 AND 20
;

--PAGE_SIZE = 10
--PAGE_NUM = 1
SELECT A.*
FROM (SELECT ROWNUM AS rnum, TT1.*
      FROM(SELECT t1.empno,
                  t1.ename,
                  t1.sal
           FROM emp t1
           ORDER BY sal
      )TT1
)A
WHERE rnum BETWEEN(:PAGE_SIZE * (:PAGE_NUM-1)+1)
AND :PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE
;
--WHERE rnum BETWEEN 1 AND 10
--WHERE rnum BETWEEN 11 AND 20
--WHERE rnum BETWEEN 21 AND 30
