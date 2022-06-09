--읽기 전용 view생성
--VIEW2생성
CREATE OR REPLACE VIEW view2
AS (SELECT A,B FROM o_table)
WITH READ ONLY;

--데이터 입력
INSERT INTO view2 VALUES(1,2);
--읽기 전용 뷰에서는 DML 작업을 수행할 수 없습니다.