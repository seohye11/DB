--PIVOT : row 단위를 column 단위로 변경
--UNPIVOT : column 단위를 row 단위로 변경

SELECT *
FROM tb_pivot
;

SELECT year,
       DECODE(month,1,month) M01,
       DECODE(month,2,month) M02,
       DECODE(month,3,month) M03,
       DECODE(month,4,month) M04,
       DECODE(month,5,month) M05,
       DECODE(month,6,month) M06,
       DECODE(month,7,month) M07,
       DECODE(month,8,month) M08,
       DECODE(month,9,month) M09,
       DECODE(month,10,month) M10,
       DECODE(month,11,month) M11,
       DECODE(month,12,month) M12
FROM tb_pivot
;