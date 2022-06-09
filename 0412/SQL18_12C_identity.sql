--identity column : primary key를 자동으로 증가되는 기능

CREATE TABLE T_IDEN
(
    no NUMBER generated AS IDENTITY,
    name VARCHAR2(10)
)
;

INSERT INTO T_IDEN (name) VALUES('AAA');
INSERT INTO T_IDEN (name) VALUES('BBB');

SELECT * FROM T_IDEN;