--인덱스를 활용해서 최소값 최대값 구하기
-- : MIN/MAX함수는 모든 데이터를 기준 컬럼으로 정렬 후 최소, 최대값을 구함
SELECT MIN(name)
FROM new_emp4; --MIN함수 사용

SELECT name
FROM new_emp4
WHERE name > '0'
AND ROWNUM = 1; --INDEX 사용해서 최소값 구하기

SELECT MAX(name)
FROM new_emp4; --MAX함수 사용

--INDEX 사용해서 최대값 구하기
-->oracle hint 사용(/*+ INDEX_DESC(테이블 ALIAS 인덱스명)*/name
-->(인덱스를 asc정렬했기 때문에 오라클 힌트사용해서 desc로 재정렬)
SELECT /*+ INDEX_DESC(t1 IDX_NEWEMP4_NAME) */name
FROM new_emp4 t1
WHERE name > '0'
AND ROWNUM = 1; 