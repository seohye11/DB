--WITH절을 활용한 SUB QUERY
-- :1) WITH절을 사용하여 원하는 테이블을 메모리에 미리 뷰처럼 가상의 테이블로 생성시킨 후
--   데이터를 가져오는 기법
--  2) WITH절 안에는 SELECT문장만 쓸 수 있다
--  3) WITH절 안에는 또 다른 WITH절을 쓸 수 없다

-- WITH 별칭1 AS(SELECT문),
--      별칭2 AS(SELECT문),
--      별칭3 AS(SELECT문),
-- SELECT
-- FROM 별칭1,별칭2,별칭3;

--TEST 1. 대용량의 테이블을 생성한 후 최대값과 최소값의 차이 구하기 

--   STEP 1. 실습 전에 필요한 파일의 용량을 증가 합니다.  
--scott계정으로 with_test1 테이블 생성 후 데이터 500만건 입력
CREATE TABLE with_test1(
 no NUMBER,
 name VARCHAR2(10),
 pay NUMBER(6)
)
TABLESPACE USERS;

DESC with_test1;

--500만건 입력
BEGIN
   FOR i IN 1..5000000 LOOP
       INSERT INTO with_test1 VALUES(i,
                                     DBMS_RANDOM.STRING('A',5),--대소문자 구분없이 5자리 문자
                                     DBMS_RANDOM.VALUE(6,999999));--숫자 6자리 문자
   END LOOP;
   COMMIT;
END;
/ --anonymous 프로시저 실행

--500만건 입력 건수 확인
SELECT COUNT(*)
FROM with_test1;

--   STEP 2. MAX,MIN 함수를 사용하여 최대값,최소값의 차이를 구하고 소요시간 측정
SELECT MAX(pay)-MIN(pay)
FROM with_test1;

--   STEP 3. PAY INDEX 생성
CREATE INDEX idx_with_pay ON with_test1(pay); --CREATE INDEX 인덱스이름 ON 테이블이름(컬럼이름)

SELECT MAX(pay)-MIN(pay)
FROM with_test1
WHERE pay > 0;

------------WITH절을 사용하여 동일한 작업 수행------------
WITH a AS(
  /*최대값*/
  --ORACLE HINT
  SELECT /* + INDEX_DESC (w idx_with_pay) */ pay
  FROM with_test1 w
  WHERE pay > 0
  AND ROWNUM = 1
),b AS(
/*최소값*/
  SELECT /* + INDEX_ASC (w idx_with_pay) */ pay
  FROM with_test1 w
  WHERE pay > 0
  AND ROWNUM = 1)
  SELECT a.pay - b.pay
  FROM a,b;
--/*+ */ : oracle hint