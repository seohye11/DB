--��Į�� ���� ����(Scalar Sub query)
-- : SELECT ���� ���� ���� ������ �� ���� ��� 1�྿ ��ȯ
--SUB QUERY�� ���� ��ġ�� ���� �� �̸��� �ٸ���
--1. SELECT(sub query) : ��Į�� ��������
--2. FROM(sub query) : Inline ��
--3. WHERE(sub query) : SUB QUERY

SELECT t1.name,
       (SELECT dname
        FROM dept2 t2
        WHERE t1.deptno = t2.dcode) "DNAME"
FROM emp2 t1
;

--join
SELECT t1.name,
       t2.dname "DNAME"
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
;

-- 1. Main Query �� ������ �� Scalar Sub Query �� �ʿ��� ���� �����մϴ�.
--
-- 2. Scalar Sub Query �� �����ϱ� ���� �ʿ��� �����Ͱ� ����ִ� ����� �޸𸮷� �ε��մϴ�.
--
-- 3. Main Query ���� �־��� ������ ������ �ʿ��� ���� ã���ϴ�.
--   �׸��� �� ����� �޸𸮿� �Է� �� �� ��� ������ �޸� ���� query execution cache ���
--   ���� ���� �� �Ӵϴ�. ���⼭ �Է� ���� Main Query ���� �־��� ���̰� ��°��� Scalar 
--   Sub Query �� ���� �� ���� ������Դϴ�.
--   �� ���� �����ϴ� ĳ�� ���� �����ϴ� �Ķ���ʹ� _query_execution_cache_max_size �Դϴ�.
--
--4. ���� ������ Main Query ���� Scalar Sub Query �� ������ �ؽ� �Լ��� �̿��ؼ� �ش�
--   ���� ĳ���� �����ϴ� �� ã�� ������ ��� ��� ���� ����ϰ� ������ �ٽ� ����� ������ 
--   �ؼ� �ش� ���� ã�� �� �ٽ� �޸𸮿� ĳ�� �� �Ӵϴ�. 
--
--5. Main Query �� ���� ������ �ݺ��մϴ�.