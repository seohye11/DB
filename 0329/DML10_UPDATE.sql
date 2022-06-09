--전체 데이터 수정
--loc를 모두 SEOUL변경
SELECT *
FROM dept_temp2;

UPDATE dept_temp2
SET LOC = 'SEOUL';

SELECT *
FROM dept_temp2;

ROLLBACK;
