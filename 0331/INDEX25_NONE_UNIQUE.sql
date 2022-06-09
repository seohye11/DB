--NONE-UNIQUE INDEX
-- : �ߺ��� �����Ͱ� ���߸� �ϴ� �÷��� �����ϴ� INDEX

--CREATE INDEX �ε�����
--ON ���̺� �̸�(�÷� ASC|DESC, �÷� ASC|DESC)

--dept2���̺��� area �÷��� none unique index ����
CREATE INDEX idx_dept2_area
ON dept2(area);

ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT /*+ INDEX_ASC(t1 IDX_DEPT2_AREA) */ *
FROM dept2 t1
WHERE area > '0';
--����Ŭ���� �پ��� ������ �� ������ �������� ������ �ڵ����� 
--solt���� ������� ����Ŭ ��Ʈ(/*+ INDEX_ASC(t1 IDX_DEPT2_AREA) */)���

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));

--Starts : �ش� �۾��� �õ��� Ƚ��
--E-Rows : �ش� �۾��� �����ϴ� �ο� �� (����ġ)
--A-Rows : �ش� �۾��� �����ϴ� ���� �ο� ��
--A-Time : ���� ����ð�(child operation�� �ð����� ��ģ ����ġ)
--Buffers : �ش� �۾� �� �޸𸮿��� ���� blocks