--DECODE(A,B,DECODE(C,D,'1',NULL))
--(DECODE �Լ� �ȿ� DECODE�Լ� ��ø)
--A�� B�̰� C�� D�� �����ϸ� '1', C�� D�� �ƴ� ��� NULL

--if(deptno == 101) {
--    if(name ----== 'Audie Murphy') {
--        'Best!'
--    } else {
--        null
--    }
--}

--professor ���̺��� ������ �̸��� �μ���ȣ�� ����ϰ� 101 �� �μ� �߿��� �̸��� "Audie Murphy" 
--�������� "BEST!" ��� ����ϰ� 101�� �μ� �߿��� �̸��� "Audie Murphy" ������ �ƴ� ���������� NULL ���� ����ϼ���. 
--���� 101 �� �� �ٸ� �а��� "Audie Murphy" ������ �־ "BEST!" �� ��µǸ� �ȵ˴ϴ�.

SELECT deptno,
       name,
       DECODE(deptno,101,
       DECODE(name,'Audie Murphy','BEST!',NULL)) "NESTED_DECODE"
FROM professor
;