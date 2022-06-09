--가상컬럼(11g추가)
--STEP1. 가상 컬럼을 가지는 테이블 생성
CREATE TABLE vt1(
    COL1 NUMBER,
    COL2 NUMBER,
    COL3 NUMBER GENERATED ALWAYS AS (COL1 + COL2)
);

--STPE2. 테이블에 데이터 입력(가상컬럼에 직접 데이터 입력 안 됨)
INSERT INTO vt1 VALUES (1,2,3);--SQL 오류:INSERT 작업은 가상 열에서 
--                                       허용되지 않습니다.

INSERT INTO vt1(col1,col2) VALUES (1,2);

--STEP3. 입력된 데이터 조회
SELECT * FROM vt1;

--STEP4. 기존값을 변경 (col1의 값을 1에서 5로 변경)
UPDATE vt1
SET col1 = 5;

SELECT * FROM vt1;