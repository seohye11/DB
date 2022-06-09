--데이터 사전(Data Dictionary)이란 대부분 읽기 전용으로 제공되는 										
--테이블 및 뷰들의 집합으로 데이터베이스 전반에 대한 정보를 제공 한다.

--테이블에서 가상 컬럼 내역을 조회
SELECT column_name,
       data_type,
       data_default
FROM user_tab_columns
WHERE table_name = 'VT1'
ORDER BY column_id;