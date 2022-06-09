--Invisible Column

CREATE TABLE T_MUMBER
(
    no NUMBER,
    name VARCHAR2(10),
    tel NUMBER,
    jumin VARCHAR2(13) invisible
);

DESC T_MUMBER;

INSERT INTO T_MUMBER VALUES (1,'BBB',1234567890,1234567);
--값의 수가 너무 많습니다

INSERT INTO T_MUMBER VALUES (1,'BBB',1234567890);

SELECT * FROM T_MUMBER;

--속성 변경
ALTER TABLE T_MUMBER
MODIFY (jumin VISIBLE);

SELECT * FROM T_MUMBER;

ALTER TABLE T_MUMBER
MODIFY (jumin INVISIBLE);

SELECT table_name,
       column_name,
       hidden_column
FROM user_tab_cols
WHERE table_name = 'T_MUMBER';

