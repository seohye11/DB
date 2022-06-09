--MERGE INTO TABLE1
--USING TABLE2
--ON(병합조건)
--WHEN MATCHED THEN
--     UPDATE SET 업데이트 내용 or DELETE WHERE 조건
--WHEN NOT MATCHED THEN
--     INSERT VALUES(데이터)

--charge_01 + ch_total
MERGE INTO ch_total total
USING charge_01 ch01
ON(total.u_date = ch01.u_date)
WHEN MATCHED THEN
UPDATE SET total.cust_no = ch01.cust_no
WHEN NOT MATCHED THEN
INSERT VALUES (ch01.u_date,ch01.cust_no,ch01.u_time,ch01.charge);

--charge_02 + ch_total
MERGE INTO ch_total total
USING charge_02 ch02
ON(total.u_date = ch02.u_date)
WHEN MATCHED THEN
UPDATE SET total.cust_no = ch02.cust_no
WHEN NOT MATCHED THEN
INSERT VALUES (ch02.u_date, ch02.cust_no,ch02.u_time,ch02.charge);

SELECT * FROM ch_total;