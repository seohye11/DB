--인라인 뷰를 사용한 TOP-N SQL
-- : SQL문에서 일회성으로 만들어 사용하는 뷰
--ROWNUM 과 ORDER BY
SELECT ROWNUM,
       t1.empno,
       t1.ename
FROM emp t1;

SELECT ROWNUM,
       t1.empno,
       t1.ename,
       t1.sal
FROM emp t1
ORDER BY t1.sal;--순서 불규칙

SELECT ROWNUM, TT1.*
FROM(SELECT t1.empno,
            t1.ename,
            t1.sal
    FROM emp t1
    ORDER BY sal
)TT1
;--ROWNUM 제대로 출력->order by 서브쿼리에 작성
--ROWNUM 과 ORDER BY 같이 사용시 ORDER BY가있는 셀렉문을 감싸줘야함

