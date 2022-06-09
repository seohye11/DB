SELECT year,
       MAX(DECODE(month,1,month)) M01,
       MAX(DECODE(month,2,month)) M02,
       MAX(DECODE(month,3,month)) M03,
       MAX(DECODE(month,4,month)) M04,
       MAX(DECODE(month,5,month)) M05,
       MAX(DECODE(month,6,month)) M06,
       MAX(DECODE(month,7,month)) M07,
       MAX(DECODE(month,8,month)) M08,
       MAX(DECODE(month,9,month)) M09,
       MAX(DECODE(month,10,month)) M10,
       MAX(DECODE(month,11,month)) M11,
       MAX(DECODE(month,12,month)) M12
FROM tb_pivot
GROUP BY year
;