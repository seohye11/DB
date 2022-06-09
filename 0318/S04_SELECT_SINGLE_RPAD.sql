--emp테이블에서 deptno가 10번인 사원들의 이름을 총9자리로 출력하되
--오른쪽 빈자리에는 해당 자리 수에 해당되는 숫자가 출력

SELECT ename,
       RPAD(ename,9,SUBSTR('123456789',LENGTH(ename)+1)) AS RPAD,
       LENGTH(ename),
       SUBSTR('123456789',LENGTH(ename)+1) AS SUBSTR
FROM emp
WHERE deptno = 10
;