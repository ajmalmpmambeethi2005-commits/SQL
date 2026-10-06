SELECT
    name,
    department,
    salary
FROM (
    SELECT
        name,
        department,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS rank_no
    FROM employees
) ranked_employees
WHERE rank_no <= 2;