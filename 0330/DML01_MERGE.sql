--MERGE : 여러 테이블의 데이터를 합치는 병합을 의미

--MERGE INTO TABLE1
--USING TABLE2
--ON(병합조건)
--WHEN MATCHED THEN
--     UPDATE SET 업데이트 내용 or DELETE WHERE 조건
--WHEN NOT MATCHED THEN
--     INSERT VALUES(데이터)

--TABLE charge_01,chatge_02,ch_total 만들기
CREATE TABLE charge_01(
    u_date VARCHAR2(6),
    cust_no NUMBER,
    u_time NUMBER,
    charge NUMBER
);

DESC charge_01;--테이블생성확인

CREATE TABLE charge_02(
    u_date VARCHAR2(6),
    cust_no NUMBER,
    u_time NUMBER,
    charge NUMBER
);

CREATE TABLE ch_total(
    u_date VARCHAR2(6),
    cust_no NUMBER,
    u_time NUMBER,
    charge NUMBER
);
