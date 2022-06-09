--board:crud

--insert
INSERT INTO board (
    seq,
    title,
    contents,
    read_cnt,
    reg_id,
    mod_id
) VALUES (
    :v0,
    :v1,
    :v2,
    :v3,
    :v5,
    :v7
);

SELECT * FROM board;

--delete
DELETE FROM board
WHERE SEQ = 1;

SELECT * FROM board;

--deoselectOne
SELECT
    seq,
    title,
    contents,
    read_cnt,
    TO_CHAR(reg_dt,'YYYY/MM/DD HH24:MI:SS') AS reg_dt,
    reg_id,
    TO_CHAR(mod_dt,'YYYY/MM/DD HH24:MI:SS') AS mod_dt,
    mod_id
FROM board
WHERE seq = :SEQ;

--update
UPDATE board
SET title = :v1,
    contents = :v2,
    mod_dt = SYSDATE,
    mod_id = :v3
WHERE seq = :v0;

SELECT * FROM board;

--��ȸ�Ǽ� ����
UPDATE board
SET read_cnt = read_cnt + 1
WHERE seq = :v0;

--�����ȸ
ALTER SESSION SET STATISTICS_LEVEL = ALL;
SELECT A.seq,
       A.rnum AS num,
       A.title AS title,
       A.read_cnt,
       TO_CHAR(a.mod_dt,'YYYY/MM/DD') AS mod_dt,
       A.mod_id
FROM(
    SELECT ROWNUM AS rnum, t1.*
    FROM(
        SELECT*
        FROM board
        --�˻�����
        ORDER BY mod_dt DESC)t1
    WHERE ROWNUM <= 10
)A
WHERE rnum >= 1;

SELECT * 
FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));

--������ ����

TRUNCATE TABLE board;

INSERT INTO board
SELECT LEVEL AS seq,
       '����'||LEVEL As title,
       '����'||LEVEL AS contents,
       0 AS read_cnt,
       SYSDATE - ((ROWNUM)/(60*60)) AS reg_dt,
       'ADMIN' AS reg_id,
       SYSDATE - ((ROWNUM)/(60*60)) AS mod_dt,
       'ADMIN' AS mod_id
FROM dual
CONNECT BY LEVEL <= 900;

SELECT * FROM board;

--��ü �Ǽ� ��ȸ
SELECT COUNT (*) total_cnt
FROM board;
--�˻�����

