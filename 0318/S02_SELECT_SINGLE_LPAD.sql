--emp테이블을 사용하여 아래 화면과 같이 deptno가 10번인 사원들의
--사원이름을 총 9바이트로 출력하되 빈 자리에는 해당 자리의 숫자
SELECT ename,
       LPAD(ename,9,'123456789') AS LPAD01
FROM emp
WHERE deptno = 10
;