--VIEW : 가상의 테이블
-- 원래 테이블에는 데이터가 들어있지만 VIEW에는 데이터가 없고 테이블에
-- 가서 데이터를 불러오는 SQL Query만 저장
--VIEW용도
--1)보안
--2)사용자 편의성

--VIEW생성 문법
--CREATE [OR REPALCE][FORSE | NOFORSE]VIEW view이름 (열 이름1,열이름2..)
--AS(sub-query)
--[with check option [constraint 제약조건]]
--[with read only]

--OR REPLACE : 같은 이름의 View가 있는 경우 삭제 후 다시 생성
--FORSE : 기존 테이블의 존재 여부에 상관 없이 View생성
--NORFORSE : 기존 테이블이 존재할 경우 View생성(default)
--열이름 : 기본 테이블 컬럼(sub-query)컬럼 이름과 다르게 지정한 view컬럼 이름
--with check option : 주어진 제약 조건에 맞는 데이터만 입력 및 수정 허용
--with read only : SELECT만 가능한 읽기 전용 View

CREATE OR REPLACE VIEW vw_emp20
AS (SELECT empno, ename, job, deptno
    FROM emp
    WHERE deptno = 20)
;

SELECT * 
FROM vw_emp20;