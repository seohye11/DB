--NULL처리
--NULL을 포함하여 출력 : *
--컬럼이름을 사용하면 NULL불포함
--COUNT함수 : 데이터의 개수를 구해주는 함수
--COUNT(DISTINCT,ALL)

--COUNT(*) : null포함 결과
--COUNT(comm) : null 제외 결과
SELECT COUNT(*),COUNT(comm)
FROM emp
;