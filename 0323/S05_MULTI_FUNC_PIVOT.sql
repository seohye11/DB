--PIVOT합수
--SELECT*FROM(SELECT year, month FROM tb_pivot)
--PIVOT(PIVOT절 : 그룹 함수 적용된 컬럼 : MAX(month)
--      FROM절 : PIVOT에 기준이 되는 컬럼 : FOR month
--      IN절 : PIVOT FOR에서 정의한 컬럼 필터링 : 1 AS M01
--                                             2 AS M02

SELECT * FROM(SELECT year, month FROM tb_pivot)
PIVOT(MAX(month) FOR month IN(1 AS M01
                              ,2 AS M02
                              ,3 AS M03
                              ,4 AS M04
                              ,5 AS M05
                              ,6 AS M06
                              ,7 AS M07
                              ,8 AS M08
                              ,9 AS M09
                              ,10 AS M10
                              ,11 AS M11
                              ,12 AS M12 )
)
;