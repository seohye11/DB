-- >ANY : ���� ���� ��� �߿��� �ּҰ��� ��ȯ
-- <ANY : ���� ���� ��� �߿��� �ִ밪�� ��ȯ
-- <ALL : ���� ���� ��� �߿��� �ּҰ��� ��ȯ
-- >ALL : ���� ���� ��� �߿��� �ִ밪�� ��ȯ
SELECT name,
       grade,
       weight
FROM student
WHERE weight < ALL(SELECT weight
                   FROM student
                   WHERE grade = 2);
