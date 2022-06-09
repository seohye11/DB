--INDEX(인덱스)
--데이터베이스 성능과 관련해서 중요한 역할
--인덱스는 양날의 칼날이라 잘 사용하면 좋지만 잘못 쓰게 될 경우 성능 저하

--ROWID : 데이터들이 저장되어 있는 주소

--인덱스의 종류

--1)OLTP(Online Transaction Processing)실시간 트랜잭션 처리 
--  > B-TREE인덱스 : 흔히 접하는 대부분의 DB OLTP

--2)OLAP(Online Analytical Processing)온라인 분석 처리용
--  > BITMAP인덱스 : 대량의 데이터를 한꺼번에 입력한 후 주로 분석이나 통계정보 등을 출력할 때 사용

--UNIQUE INDEX
-- : 인덱스를 만드는 컬럼에 중복되는 데이터가 없다
--CREATE UNIQUE INDEX 인덱스명
--ON 테이블 이름(컬럼 ASC|DESC, 컬럼 ASC|ASC)
