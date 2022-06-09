--결합 인덱스(Compose INDEX)
-- : WHERE절에 조건 컬럼이 2개 이상 AND로 연결되어 함께 사용되는 경우 사용
--   아주 많이 사용하는 인덱스, 단 잘못 생성하게 되면 성능 저하
--1) emp테이블에 인원 100명, 그 중에 남자(m)50명, 여자(f)50명이라 가정
--   남자 중 SMITH인 사람이 2명 있다고 가정
--   ->이름 찾고 성별을 찾는다(성능 우수), 성별찾고 이름 찾는다(성능 저하)

--CREATE INDEX 인덱스명
--ON 테이블 이름(컬럼 ASC|DESC, 컬럼 ASC|DESC)

--emp, ename, job을 결합한 인덱스 생성
CREATE INDEX idx_emp_comp
ON emp(ename ASC, job DESC);