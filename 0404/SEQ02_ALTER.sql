--시컨스 수정

--ALTER SEQUENCE 시퀀스 이름
--[INCREMENT BY n] : 시퀀스 번호의 증가 값으로 기본은 1
--[START WITH n] : 시퀀시 시작번호 기본값은 1 ->> 수정 불가능->사용x
--[MAXVALUE n | NOMAXVALUE] : 생성 가능한 시퀀스 최대값(nomaxvalue 10의27승)
--[MINVALUE n | NOMINVALUE] : 생성 가능한 시퀀스 최소값(nominvalue 오름차순이면 1,내림차순이면 10의-26승)
--[CYCLE | NOCYCLE] : 시퀀스 번호를 순환 사용할 것인지 지정
--[CACHE n | NOCACHE] : 시퀀스 생성 속도를 개선하기 위해 캐싱 여부 지정

ALTER SEQUENCE seq_dept_sequence
INCREMENT BY 3
MAXVALUE 99
MINVALUE 0
CYCLE
CACHE 2;

SELECT * FROM user_sequences;

INSERT INTO dept_sequence VALUES(seq_dept_sequence.NEXTVAL,'DETABASE','SEOUL');
SELECT * FROM dept_sequence;