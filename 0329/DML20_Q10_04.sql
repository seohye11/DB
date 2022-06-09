--60번 부서 입사 제일 빠른 사람 조회
SELECT MIN(hiredate)
FROM CHAP10HW_emp
WHERE deptno = 60;

--1번보다 입사 빠른 사람 조회
SELECT * 
FROM CHAP10HW_emp
WHERE hiredate > (SELECT MIN(hiredate)
                  FROM CHAP10HW_emp
                  WHERE deptno = 60);

--업데이트
UPDATE CHAP10HW_emp
SET sal = sal*1.1,
    deptno = 80
WHERE hiredate > (SELECT MIN(hiredate)
                  FROM CHAP10HW_emp
                  WHERE deptno = 60);    

--업데이트 확인
SELECT * 
FROM CHAP10HW_emp
WHERE deptno = 80;