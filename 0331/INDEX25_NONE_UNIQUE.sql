--NONE-UNIQUE INDEX
-- : 중복된 데이터가 들어가야만 하는 컬럼에 생성하는 INDEX

--CREATE INDEX 인덱스명
--ON 테이블 이름(컬럼 ASC|DESC, 컬럼 ASC|DESC)

--dept2테이블의 area 컬럼에 none unique index 생성
CREATE INDEX idx_dept2_area
ON dept2(area);

ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT /*+ INDEX_ASC(t1 IDX_DEPT2_AREA) */ *
FROM dept2 t1
WHERE area > '0';
--오라클에서 다양한 실행방법 중 최적의 실행방법을 결정함 자동으로 
--solt되지 않을경우 오라클 힌트(/*+ INDEX_ASC(t1 IDX_DEPT2_AREA) */)사용

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));

--Starts : 해당 작업을 시도한 횟수
--E-Rows : 해당 작업이 리턴하는 로우 수 (예상치)
--A-Rows : 해당 작업이 리턴하는 실제 로우 수
--A-Time : 실제 실행시간(child operation의 시간까지 합친 누적치)
--Buffers : 해당 작업 중 메모리에서 읽은 blocks