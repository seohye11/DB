SELECT NO, NAME FROM cat_a
UNION ALL
SELECT * FROM cat_b
UNION ALL
SELECT * FROM cat_c;

--
SELECT cat_a.name,
       cat_b.name,
       no --���� : ���� ���ǰ� �ָ��մϴ�
FROM cat_a, cat_b
WHERE cat_a.no = cat_b.no
;

--2���� ���̺�� īƼ�� �� ����
SELECT a.name,
       b.name,
       a.no
FROM cat_a a, cat_b b
--WHERE cat_a.no = cat_b.no
;

--3�� ���̺� ���� ����
SELECT a.name,
       b.name,
       c.name,
       b.no
FROM cat_a a, cat_b b, cat_c c
WHERE a.no = b.no
AND a.no = c.no
;

--3���̺� īƼ�� ��
SELECT a.name,
       b.name,
       c.name,
       b.no
FROM cat_a a, cat_b b, cat_c c
WHERE a.no = b.no
--AND a.no = c.no
;