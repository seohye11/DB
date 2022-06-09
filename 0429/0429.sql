CREATE TABLE members(
 id VARCHAR2(20),
 age NUMBER
);
 INSERT INTO members VALUES ('sports', 35);
 INSERT INTO members VALUES ('admin', 40);
 INSERT INTO members VALUES ('brown', 20);
 
 SELECT *
 FROM members;
 
CREATE OR REPLACE PROCEDURE USER_PROC
AS
var_age NUMBER;
BEGIN
SELECT AGE INTO var_age FROM MEMBERS WHERE ID = 'admin';
IF var_age >= 40 THEN
   var_age := var_age + 1;
END IF;
DBMS_OUTPUT.PUT_LINE (var_age);
END;

SET SERVEROUTPUT ON;
EXECUTE USER_PROC;