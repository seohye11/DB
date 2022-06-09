--CEIL : 주어진 숫자와 가장 근접한 큰 정수를 출력
--ROWNUM : 출력되는 순서대로 넘버링 처리

SELECT ROWNUM ,
       ename,
       CEIL(ROWNUM/3) AS CEIL01
FROM emp
;