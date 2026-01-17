SELECT MAX(salary) AS nth_highest_salary
FROM (
    SELECT 
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS rn
    FROM Employee
) t
WHERE rn = N;



Time: O(n log n) due to ordering
Space: O(n) for window function processing
