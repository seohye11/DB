Insert into SPRING.COM_CODE (MST_CODE,DET_CODE,MST_NM,DET_NM,SEQ,USE_YN,REG_DT,REG_ID,MOD_ID,MOD_DT) values ('PC_BOARD_DIV','10','게시구분','10',10,'1',to_date('22/05/31','RR/MM/DD'),'ADMIN','ADMIN',to_date('22/05/31','RR/MM/DD'));
Insert into SPRING.COM_CODE (MST_CODE,DET_CODE,MST_NM,DET_NM,SEQ,USE_YN,REG_DT,REG_ID,MOD_ID,MOD_DT) values ('PC_BOARD_DIV','20','게시구분','20',20,'1',to_date('22/05/31','RR/MM/DD'),'ADMIN','ADMIN',to_date('22/05/31','RR/MM/DD'));
Insert into SPRING.COM_CODE (MST_CODE,DET_CODE,MST_NM,DET_NM,SEQ,USE_YN,REG_DT,REG_ID,MOD_ID,MOD_DT) values ('PC_BOARD_DIV','30','게시구분','30',30,'1',to_date('22/05/31','RR/MM/DD'),'ADMIN','ADMIN',to_date('22/05/31','RR/MM/DD'));
Insert into SPRING.COM_CODE (MST_CODE,DET_CODE,MST_NM,DET_NM,SEQ,USE_YN,REG_DT,REG_ID,MOD_ID,MOD_DT) values ('PC_BOARD_DIV','50','게시구분','50',40,'1',to_date('22/05/31','RR/MM/DD'),'ADMIN','ADMIN',to_date('22/05/31','RR/MM/DD'));
Insert into SPRING.COM_CODE (MST_CODE,DET_CODE,MST_NM,DET_NM,SEQ,USE_YN,REG_DT,REG_ID,MOD_ID,MOD_DT) values ('PC_BOARD_DIV','100','게시구분','100',50,'1',to_date('22/05/31','RR/MM/DD'),'ADMIN','ADMIN',to_date('22/05/31','RR/MM/DD'));

SELECT det_code,
       det_nm,
       seq,
       use_yn
FROM com_code; 