CREATE TABLE member
(user_id VARCHAR2(20) NOT NULL PRIMARY KEY,
 passwd VARCHAR2(20) NOT NULL,
 name VARCHAR2(30) NOT NULL,
 email VARCHAR2(320) NOT NULL,
 birth CHAR(8),
 cellphone VARCHAR2(20) NOT NULL,
 ranking VARCHAR2(2) DEFAULT 1,
 reg_dt DATE DEFAULT SYSDATE,
 reg_id VARCHAR2(20),
 mod_dt DATE DEFAULT SYSDATE,
 mod_id VARCHAR2(20)
);

CREATE UNIQUE INDEX MEMBER_EMAIL_UK
ON member(email);