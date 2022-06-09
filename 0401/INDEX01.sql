--BITMAP INDEX
-- : 데이터 값의 종류가 적고 동일한 데이터가 많을 경우 주로 사용
--   데이터의 변경량이 적거나 없어야 한다
--   OLAP환경에서 주로 사용
--   어떤 데이터가 어디 있다라는 지도(MAP)를 bit로 표시
--   즉 어떤 데이터가 존재하는 곳은 1로 표시하고 해당 데이터가 없는 곳은 0으로 표시
--CREATE BITMAP INDEX 인덱스명
--ON 테이블이름(컬럼명1)

--인덱스의 주의사항
--1)DML에 취약(DML이 발생하는 테이블은 인덱스를 최소한으로 작게 만들어야 함)
--  (INDEX는 소트돼서 관리되기 때문에 테이블에 데이터가 입력되면 인덱스에도 추가돼야 함)
--delete : index에 delete는 없고 사용 안함으로 표시(인덱스rebuild)
--update : update라는 개념이 인덱스에는 없다(delete이후 insert수행 부하가 심하다)

--다양한 인덱스 활용
--STEP1. 사원테이블을 참조해 테이블 생성
CREATE TABLE new_emp4(
    no NUMBER,
    name VARCHAR2(10),
    sal NUMBER
);--테이블 생성

INSERT INTO new_emp4 VALUES(1000,'SMITH',300);
INSERT INTO new_emp4 VALUES(1001,'ALLEN',250);
INSERT INTO new_emp4 VALUES(1002,'KING',430);
INSERT INTO new_emp4 VALUES(1003,'BLACK',220);
INSERT INTO new_emp4 VALUES(1004,'JAMES',620);
INSERT INTO new_emp4 VALUES(1005,'MILLER',2000);--데이터삽입

SELECT * FROM new_emp4;--확인

COMMIT;

--STEP2. name컬럼에 인덱스 생성
CREATE INDEX idx_newemp4_name
ON new_emp4(name ASC);

--STEP3. 인덱스를 사용하지 않은 상태로 조회
SELECT no, name, sal
FROM new_emp4
;

--STEP4. 인덱스를 사용하여 조회
SELECT no, name, sal
FROM new_emp4
WHERE name > '0'
;
