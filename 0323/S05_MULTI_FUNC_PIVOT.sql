--PIVOT�ռ�
--SELECT*FROM(SELECT year, month FROM tb_pivot)
--PIVOT(PIVOT�� : �׷� �Լ� ����� �÷� : MAX(month)
--      FROM�� : PIVOT�� ������ �Ǵ� �÷� : FOR month
--      IN�� : PIVOT FOR���� ������ �÷� ���͸� : 1 AS M01
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