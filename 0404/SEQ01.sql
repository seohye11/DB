--시퀀스(Sequence)
-- : 연속된 번호의 생성이 필요한 경우를 위해 사용, 연속된 번호 자동 생성기

--CREATE SEQUENCE 시퀀스 이름
--[INCREMENT BY n] : 시퀀스 번호의 증가 값으로 기본은 1
--[START WITH n] : 시퀀시 시작번호 기본값은 1
--[MAXVALUE n | NOMAXVALUE] : 생성 가능한 시퀀스 최대값(nomaxvalue 10의27승)
--[MINVALUE n | NOMINVALUE] : 생성 가능한 시퀀스 최소값(nominvalue 오름차순이면 1,내림차순이면 10의-26승)
--[CYCLE | NOCYCLE] : 시퀀스 번호를 순환 사용할 것인지 지정
--[CACHE n | NOCACHE] : 시퀀스 생성 속도를 개선하기 위해 캐싱 여부 지정

CREATE TABLE dept_sequence
AS
SELECT * 
FROM dept
WHERE 1 = 2; --테이블 생성

DESC dept_sequence; --테이블 구조 확인

--시퀀스 생성
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;

SELECT * 
FROM user_sequences;--시퀀스 생성 확인

--dept_sequence테이블의 deptno에 시퀀스 이용해서 입력
--seq_dept_sequence.NEXTVAL : 번호 꺼내오기
INSERT INTO dept_sequence VALUES(seq_dept_sequence.NEXTVAL,'DETABASE','SEOUL');

SELECT * FROM dept_sequence;--데이터 삽입 확인

--현재 시퀀스 번호
SELECT seq_dept_sequence.CURRVAL FROM dual;

INSERT INTO dept_sequence VALUES(seq_dept_sequence.NEXTVAL,'DETABASE','SEOUL');
SELECT * FROM dept_sequence;