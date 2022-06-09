INSERT INTO pc_board VALUES (1,'a','b',0,sysdate,'abmin','20200101','ana');
INSERT INTO pc_board VALUES (2,'a','b',0,sysdate,'abmin','20200102','ana');
INSERT INTO pc_board VALUES (3,'a','b',0,sysdate,'abmin','20200103','ana');
INSERT INTO pc_board VALUES (4,'a','b',0,sysdate,'abmin','20200104','ana');
INSERT INTO pc_board VALUES (5,'a','b',0,sysdate,'abmin','20200105','ana');
INSERT INTO pc_board VALUES (6,'a','b',0,sysdate,'abmin','20200106','ana');
INSERT INTO pc_board VALUES (7,'a','b',0,sysdate,'abmin','20200107','ana');
INSERT INTO pc_board VALUES (8,'a','b',0,sysdate,'abmin','20200108','ana');
INSERT INTO pc_board VALUES (9,'a','b',0,sysdate,'abmin','20200109','ana');
INSERT INTO pc_board VALUES (10,'a','b',0,sysdate,'abmin','20200110','ana');
INSERT INTO pc_board VALUES (11,'a','b',0,sysdate,'abmin','20200111','ana');
INSERT INTO pc_board VALUES (12,'a','b',0,sysdate,'abmin','20200112','ana');
INSERT INTO pc_board VALUES (13,'a','b',0,sysdate,'abmin','20200113','ana');
INSERT INTO pc_board VALUES (14,'a','b',0,sysdate,'abmin','20200114','ana');
INSERT INTO pc_board VALUES (15,'a','b',0,sysdate,'abmin','20200115','ana');
INSERT INTO pc_board VALUES (16,'a','b',0,sysdate,'abmin','20200116','ana');
INSERT INTO pc_board VALUES (17,'a','b',0,sysdate,'abmin','20200117','ana');
INSERT INTO pc_board VALUES (18,'a','b',0,sysdate,'abmin','20200118','ana');
INSERT INTO pc_board VALUES (19,'a','b',0,sysdate,'abmin','20200119','ana');
INSERT INTO pc_board VALUES (20,'a','b',0,sysdate,'abmin','20200120','ana');

SELECT tt1.rnum as num,   
       tt1.seq,   
       tt1.title,
       tt1.contents,
       tt1.read_cnt,
       TO_CHAR(tt1.reg_dt,'YYYY/MM/DD'),
       tt1.reg_id,
       TO_CHAR(tt1.mod_dt,'YYYY/MM/DD'),
       tt1.mod_id   
FROM (   
    SELECT ROWNUM AS rnum, t1.*   
    FROM (    
        SELECT *   
        FROM pc_board   
        --Á¶°Ç   
        ORDER BY mod_dt DESC   
    )t1   
    WHERE ROWNUM <= 20   
)tt1   
WHERE rnum >= 1 
;