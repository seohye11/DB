--DECODE(A,B,DECODE(C,D,'1','2'))
--(DECODE �Լ� �ȿ� DECODE�Լ� ��ø)
--A�� B�̰� C�� D�� �����ϸ� '1', C�� D�� �ƴ� ��� 2

--if(deptno == 101) {
--    if(name ----== 'Audie Murphy') {
--        'Best!'
--    } else {
--        null
--    }
--}

--professor ���̺��� ������ �̸��� �μ���ȣ�� ����ϰ� 101 �� �μ� �߿��� �̸��� "Audie Murphy" 
--�������� ������ "BEST!"��� ����ϰ� 101�� �а��� "Audie Murphy" ���� �ܿ��� ������ 
--"GOOD!"�� ����ϰ� 101�� ������ �ƴ� ���� ������ ������ �ǵ��� ����ϼ���.

SELECT deptno,
       name,
       DECODE(deptno,101,
       DECODE(name,'Audie Murphy','BEST!','GOOD!')) "NESTED_DECODE"
FROM professor
;