--사용자에게 조건을 입력 받아서 조건 값에 맞는 값을 출력하기
SELECT empno,
       ename,
       sal
FROM emp
WHERE empno = &empno
;
