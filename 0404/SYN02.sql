--SYNONYM(시노님- 동의어)
-- : 동의어는 테이블, 뷰, 시퀀스 등 객체 이름 대신 사용할 수 있는 다른 이름
--   편의성, 보안

--CREATE [PUBLIC SYNONTM 동의어 이름]
--FOR[사용자]객체이름

--PUBLIC : 데이터베이스 내 모든 사용자가 사용할 수 있도록 설정, 생략할 경우 만든 사람만
--동의어 이름(필수) : 생성할 동의어 이름
--사용자 : 생성할 동의어의 본래 객체 소유 사용자를 지정, 생략하면 로그인 사용자
--객체이름(필수) : 동의어를 생성할 대상 객체 이름 

--scott 사용자에 emp 테이블의 동의어로 e로 생성 private SYNONYM
CREATE SYNONYM e FOR emp;

--동의어 E를 통해서 SELECT, dml작업 가능
SELECT * 
FROM e;

--scott 사용자에 dept 테이블의 동의어로 d2로 생성 public synonym
CREATE PUBLIC SYNONYM d2 FOR dept;

SELECT * 
FROM d2;

--PRIVATE SYNONYM 조회
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP'
;