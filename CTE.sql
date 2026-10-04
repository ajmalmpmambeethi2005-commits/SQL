WITH course_average AS (
    SELECT
        course,
        AVG(mark) AS average_mark
    FROM students
    GROUP BY course
)
SELECT
    course,
    average_mark
FROM course_average
WHERE average_mark > 75;