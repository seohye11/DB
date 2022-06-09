--정규식 : SQL문장에서도 유닉스에서 사용하는 정규식을 사용하여 다양한 검색 가능
-- ^ : 해당 문자로 시작하는 line출력 ('^pattern')
-- $ : 해당 문자로 끝나는 line출력 ('pattern$')
-- . : S시작해서 E로 끝나는 line출력 ('S....E')
-- * : 모든이라는 뜻, 글자 수가 0일 수도 있음 ('[a-z'*')
-- [] : 해당 문자에 해당하는 한 문자 ('[Pp]pattern')
-- [^] : 해당 문자에 해당하지 않는 한 문자 ('[^a-m]pattern')

--DESC t_reg;
--REGEXP_LIKE(text,REGEXP)

--소문자가 들어있는 행을 모두 출력
-- a~z : 소문자
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-z]')
;

--소문자, 대문자가 들어있는 행을 모두 출력
-- a~z : 소문자
-- A~Z : 대문자
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-zA-Z]')
;

--소문자로 시작하고 공백을 포함하는 행 출력
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-z] ')
;

--연속적인 글자수 지정하기
--[A-Z]{2} : 대문자가 연속적으로 2글자 이상 오는 경우
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[A-Z]{2}')
;

--숫자가 연속적으로 3개
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[0-9]{3}')
;

--특정 위치를 지정하여 출력
--영문자로 시작하는 행 출력
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'^[a-zA-Z]')
;
--영문자로 끝나는 행 출력
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-zA-Z]$')
;

--student테이블에서 이름 Ma | Mo로 시작하는 행 출력
SELECT id
FROM student
WHERE REGEXP_LIKE(id,'^M(a|o)')
;
