
SELECT 
    branch_id,
    month,
    revenue_actual,
    revenue_target,
    revenue_actual - revenue_target AS variance
FROM monthly_revenue;

SELECT 
    b.branch_name,
    m.month,
    m.revenue_actual,
    m.revenue_target,
    m.revenue_actual - m.revenue_target AS variance
FROM monthly_revenue m
JOIN branches b
ON m.branch_id = b.branch_id;



SELECT 
    b.branch_name,
    SUM(m.revenue_actual - m.revenue_target) AS total_variance
FROM monthly_revenue m
JOIN branches b
ON m.branch_id = b.branch_id
GROUP BY b.branch_name;


SELECT 
    b.branch_name,
    SUM(m.revenue_actual - m.revenue_target) AS total_variance,
    RANK() OVER (ORDER BY SUM(m.revenue_actual - m.revenue_target) DESC) AS rank
FROM monthly_revenue m
JOIN branches b
ON m.branch_id = b.branch_id
GROUP BY b.branch_name;

SELECT 
    b.branch_name,
    SUM(m.revenue_actual) AS total_actual,
    SUM(m.revenue_target) AS total_target,
    SUM(m.revenue_actual - m.revenue_target) AS total_variance,

    CASE 
        WHEN SUM(m.revenue_actual - m.revenue_target) < 0 THEN 'Underperforming'
        ELSE 'Performing'
    END AS performance_flag,

    CASE 
        WHEN MIN(m.revenue_actual - m.revenue_target) < 0 
         AND MAX(m.revenue_actual - m.revenue_target) < 0 
        THEN 'Consistently Bad'

        WHEN SUM(m.revenue_actual - m.revenue_target) > 0 
         AND MIN(m.revenue_actual - m.revenue_target) < 0 
        THEN 'Strong but Inconsistent'

        WHEN SUM(m.revenue_actual - m.revenue_target) < 0 
         AND MAX(m.revenue_actual - m.revenue_target) > MIN(m.revenue_actual - m.revenue_target)
        THEN 'Unstable / Declining'

        ELSE 'Stable'
    END AS performance_pattern

FROM monthly_revenue m
JOIN branches b
ON m.branch_id = b.branch_id

GROUP BY b.branch_name
ORDER BY total_variance DESC;
