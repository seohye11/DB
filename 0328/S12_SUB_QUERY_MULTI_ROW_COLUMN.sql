--student ���̺��� ��ȸ�Ͽ� �� �г⺰�� �ʴ� �����Ը� ���� �л��� �г�� �̸� ������

SELECT grade,
       name,
       weight
FROM student
WHERE (grade, weight) IN (SELECT grade,
                                 MAX(weight)
                          FROM student
                          GROUP BY grade)
ORDER BY grade
;