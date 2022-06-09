CREATE TABLE HR_MEMBER(
	U_ID VARCHAR2(20 BYTE) NOT NULL,
	NAME VARCHAR2(50 CHAR),
	PASSWD VARCHAR2(50 BYTE),
	CONSTRAINT PK_HR_MEMBER PRIMARY KEY(u_id)
);
--입력
INSERT INTO hr_member (
    u_id,
    name,
    passwd
) VALUES (
    :v0,
    :v1,
    :v2
)
--단건조회
SELECT
    u_id,
    name,
    passwd
FROM
    hr_member
WHERE u_id = :USER_ID;
    
    
SELECT * 
FROM hr_member;