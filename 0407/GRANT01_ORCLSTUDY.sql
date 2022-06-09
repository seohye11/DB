--객체 권한 부여
--GRANT [권한/ALL PRIVILEGES]
--ON[스키마.객체이름]
--TO[사용자이름/롤/PUBLIC]
--[WITH GRANT OPTION]

SELECT *
FROM scott.temp;--scott에서 만든 테이블 ORCLSTUDY계정에서 조회

INSERT INTO scott.temp VALUES('TEST','FROM ORCLSTUDY');

SELECT *
FROM scott.temp;

COMMIT;