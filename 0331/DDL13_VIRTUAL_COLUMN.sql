--조건절을 활용한 가상 컬럼 생성하기
CREATE TABLE sales10(
    no NUMBER,
    pcode CHAR(4),
    pdate CHAR(8),
    pqty NUMBER,
    pbugi NUMBER(1) GENERATED ALWAYS AS (CASE
        WHEN SUBSTR(pdate,5,2) IN('01','02','03')THEN 1--pdate의 5번째부터 2글자가 01,02,03이면 pbugi 값이 1
        WHEN SUBSTR(pdate,5,2) IN('04','05','05')THEN 2
        WHEN SUBSTR(pdate,5,2) IN('07','08','09')THEN 3
        ELSE 4
                                         END) virtual
);

INSERT INTO sales10(no,pcode,pdate,pqty) VALUES(1,'100','20220331',10);
INSERT INTO sales10(no,pcode,pdate,pqty) VALUES(2,'200','20220401',10);
SELECT * FROM sales10;
--GENERATED ALWAYS AS(조건)VIRTUAL; -데이터 컬럼명을 만든 곳 뒤에 붙인다.
