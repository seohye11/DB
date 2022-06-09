SELECT name,
       weight
FROM student
WHERE weight > (SELECT AVG(NVL(weight,0))
                FROM student
                WHERE deptno1 = 201);