SELECT
    name,
    course,
    mark
FROM students s
WHERE mark > (
    SELECT AVG(mark)
    FROM students
    WHERE course = s.course
);