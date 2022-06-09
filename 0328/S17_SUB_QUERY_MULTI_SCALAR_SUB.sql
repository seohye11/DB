--scalar query 테스트
--1. 2건 이상의 데이터 반환을 요청하는 경우 - 에러

SELECT t3.no,
       t3.name,
       (SELECT dname FROM t4 WHERE t3.deptno = t4.deptno)
FROM t3
; --=>error
--ORA-01427: 단일 행 하위 질의에 2개 이상의 행이 리턴되었습니다.
--01427. 00000 -  "single-row subquery returns more than one row"

UPDATE t4
SET deptno = 400
WHERE dname = 'DDD'
;
COMMIT;

SELECT t3.no,
       t3.name,
       (SELECT dname FROM t4 WHERE t3.deptno = t4.deptno)
FROM t3
;