--identity column : primary key�� �ڵ����� �����Ǵ� ���

CREATE TABLE T_IDEN
(
    no NUMBER generated AS IDENTITY,
    name VARCHAR2(10)
)
;

INSERT INTO T_IDEN (name) VALUES('AAA');
INSERT INTO T_IDEN (name) VALUES('BBB');

SELECT * FROM T_IDEN;