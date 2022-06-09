--카티션 곱을 사용하는 이유
--1) 데이터 복제해서 원본 테이블을 반복해서 읽는 것을 피하기 위해
--2) 실수로 조인 조건 컬럼 중 일부를 빠트리는 경우

--STEP 1 부서 번호가 10번인 사원들의 정보조회
SELECT empno,
       ename,
       job,
       sal
FROM emp
WHERE deptno = 10
;
--STEP 2 임의의 3건을 추출
SELECT LEVEL c1
FROM dual
CONNECT BY LEVEL <= 3
;

--STEP 3 카티션 곱으로 부서 번호가 10번 집합 3세트를 만든다
SELECT *
FROM(SELECT empno,
            ename,
            job,
            sal
     FROM emp
     WHERE deptno = 10),
     (SELECT LEVEL c1
      FROM dual
      CONNECT BY LEVEL <= 3)
;
