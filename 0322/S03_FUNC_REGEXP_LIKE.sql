--���Խ� : SQL���忡���� ���н����� ����ϴ� ���Խ��� ����Ͽ� �پ��� �˻� ����
-- ^ : �ش� ���ڷ� �����ϴ� line��� ('^pattern')
-- $ : �ش� ���ڷ� ������ line��� ('pattern$')
-- . : S�����ؼ� E�� ������ line��� ('S....E')
-- * : ����̶�� ��, ���� ���� 0�� ���� ���� ('[a-z'*')
-- [] : �ش� ���ڿ� �ش��ϴ� �� ���� ('[Pp]pattern')
-- [^] : �ش� ���ڿ� �ش����� �ʴ� �� ���� ('[^a-m]pattern')

--DESC t_reg;
--REGEXP_LIKE(text,REGEXP)

--�ҹ��ڰ� ����ִ� ���� ��� ���
-- a~z : �ҹ���
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-z]')
;

--�ҹ���, �빮�ڰ� ����ִ� ���� ��� ���
-- a~z : �ҹ���
-- A~Z : �빮��
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-zA-Z]')
;

--�ҹ��ڷ� �����ϰ� ������ �����ϴ� �� ���
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-z] ')
;

--�������� ���ڼ� �����ϱ�
--[A-Z]{2} : �빮�ڰ� ���������� 2���� �̻� ���� ���
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[A-Z]{2}')
;

--���ڰ� ���������� 3��
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[0-9]{3}')
;

--Ư�� ��ġ�� �����Ͽ� ���
--�����ڷ� �����ϴ� �� ���
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'^[a-zA-Z]')
;
--�����ڷ� ������ �� ���
SELECT text
FROM t_reg
WHERE REGEXP_LIKE(text,'[a-zA-Z]$')
;

--student���̺��� �̸� Ma | Mo�� �����ϴ� �� ���
SELECT id
FROM student
WHERE REGEXP_LIKE(id,'^M(a|o)')
;
