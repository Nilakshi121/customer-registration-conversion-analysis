-- 1. Customers registered in first six months of 2017
SELECT COUNT(*) AS registration_count
FROM customers
WHERE registration_date BETWEEN '2017-01-01' AND '2017-06-30';

-- 2. Registrations in current week (assuming current date is September 9, 2025)
SELECT COUNT(*) AS registrations_current_week
FROM customers
WHERE YEARWEEK(registration_date) = YEARWEEK(CURRENT_DATE);

-- 3. 2017 monthly registration counts
SELECT
    MONTH(registration_date) AS registration_month,
    COUNT(*) AS registration_count
FROM customers
WHERE YEAR(registration_date) = 2017
GROUP BY MONTH(registration_date)
ORDER BY registration_month;

-- 4. Registration count per month per year
SELECT
    YEAR(registration_date) AS registration_year,
    MONTH(registration_date) AS registration_month,
    COUNT(*) AS registration_count
FROM customers
GROUP BY YEAR(registration_date), MONTH(registration_date)
ORDER BY registration_year, registration_month;

-- 1. Customers registered in first six months of 2017
SELECT COUNT(*) AS registration_count
FROM customers
WHERE registration_date BETWEEN '2017-01-01' AND '2017-06-30';

-- 2. Registrations in current week (assuming current date is September 9, 2025)
SELECT COUNT(*) AS registrations_current_week
FROM customers
WHERE YEARWEEK(registration_date) = YEARWEEK(CURRENT_DATE);

-- 3. 2017 monthly registration counts
SELECT
    MONTH(registration_date) AS registration_month,
    COUNT(*) AS registration_count
FROM customers
WHERE YEAR(registration_date) = 2017
GROUP BY MONTH(registration_date)
ORDER BY registration_month;

-- 4. Registration count per month per year
SELECT
    YEAR(registration_date) AS registration_year,
    MONTH(registration_date) AS registration_month,
    COUNT(*) AS registration_count
FROM customers
GROUP BY YEAR(registration_date), MONTH(registration_date)
ORDER BY registration_year, registration_month;

-- 8. Customers with purchases vs all customers in 2017
SELECT
    COUNT(CASE WHEN first_order_id IS NOT NULL THEN 1 END) AS customers_with_purchase,
    COUNT(*) AS all_customers
FROM customers
WHERE YEAR(registration_date) = 2017;

-- 9. Lifetime conversion rate for 2017 registrations
SELECT
    ROUND(
        COUNT(CASE WHEN first_order_id IS NOT NULL THEN 1 END) /
        COUNT(*),
        4
    ) AS conversion_rate
FROM customers
WHERE YEAR(registration_date) = 2017;

-- 10. Conversion rate by channel
SELECT
    ch.channel_name,
    ROUND(
        COUNT(CASE WHEN c.first_order_id IS NOT NULL THEN 1 END) /
        COUNT(*) * 100,
        2
    ) AS conversion_rate
FROM customers c
JOIN channels ch ON c.channel_id = ch.id
GROUP BY ch.channel_name
ORDER BY conversion_rate DESC;

-- 11. Monthly conversion rates
SELECT
    YEAR(c.registration_date) AS year,
    MONTH(c.registration_date) AS month,
    ROUND(
        COUNT(CASE WHEN c.first_order_id IS NOT NULL THEN 1 END) /
        COUNT(*),
        3
    ) AS conversion_rate
FROM customers c
GROUP BY YEAR(c.registration_date), MONTH(c.registration_date)
ORDER BY year, month;

-- 12. Weekly conversion rates by channel for 2017
SELECT
 ch.channel_name,
    YEARWEEK(c.registration_date) AS week,
    ROUND(
        COUNT(CASE WHEN c.first_order_id IS NOT NULL THEN 1 END) /
        COUNT(*) * 100,
        1
    ) AS conversion_rate
FROM customers c
JOIN channels ch ON c.channel_id = ch.id
WHERE YEAR(c.registration_date) = 2017
GROUP BY YEARWEEK(c.registration_date), ch.channel_name
ORDER BY week, channel_name;

-- 13. Interval between registration and first purchase
SELECT
    c.email,
    DATEDIFF(c.first_order_date, c.registration_date) AS difference
FROM customers c
WHERE c.first_order_id IS NOT NULL;

-- 14. Average days to first order by channel
SELECT
    ch.channel_name,
    ROUND(AVG(DATEDIFF(c.first_order_date, c.registration_date)), 2) AS avg_days_to_first_order
FROM customers c
JOIN channels ch ON c.channel_id = ch.id
WHERE c.first_order_id IS NOT NULL
GROUP BY ch.channel_name
ORDER BY avg_days_to_first_order;

-- 15. Quarterly average days to first order
SELECT
    YEAR(c.registration_date) AS year,
    QUARTER(c.registration_date) AS quarter,
    ROUND(AVG(DATEDIFF(c.first_order_date, c.registration_date)), 2) AS avg_days_to_first_order
FROM customers c
WHERE c.first_order_id IS NOT NULL
GROUP BY YEAR(c.registration_date), QUARTER(c.registration_date)
ORDER BY year, quarter;

-- 16. Weekly average days to first order by channel for 2017
SELECT
    YEARWEEK(c.registration_date) AS week,
    ch.channel_name,
    ROUND(AVG(DATEDIFF(c.first_order_date, c.registration_date)), 2) AS avg_days_to_first_order
FROM customers c
JOIN channels ch ON c.channel_id = ch.id
WHERE YEAR(c.registration_date) = 2017
  AND c.first_order_id IS NOT NULL
GROUP BY YEARWEEK(c.registration_date), ch.channel_name
ORDER BY week, channel_name;

-- 17. Customers with quick first order but no recent activity
SELECT
    c.email,
    c.full_name,
    c.first_order_date,
    c.last_order_date
FROM customers c
WHERE DATEDIFF(c.first_order_date, c.registration_date) <= 30
  AND DATEDIFF(c.last_order_date, c.registration_date) <= 90
  AND c.last_order_date < DATE_SUB(CURRENT_DATE, INTERVAL 6 MONTH)
ORDER BY c.last_order_date;

-- 18. Order timing by registration form version
SELECT
    COUNT(CASE WHEN DATEDIFF(c.first_order_date, c.registration_date) = 0 THEN 1 END) AS order_on_registration_date,
    COUNT(CASE WHEN DATEDIFF(c.first_order_date, c.registration_date) > 0 THEN 1 END) AS order_after_registration_date
FROM customers c
WHERE c.first_order_id IS NOT NULL;

-- 19. Conversion chart for monthly registration
SELECT
    YEAR(c.registration_date) AS year,
    MONTH(c.registration_date) AS month,
    COUNT(*) AS registered_count,
    COUNT(CASE WHEN c.first_order_id IS NULL THEN 1 END) AS no_sale,
    COUNT(CASE WHEN DATEDIFF(c.first_order_date, c.registration_date) <= 3 THEN 1 END) AS three_days,
    COUNT(CASE WHEN DATEDIFF(c.first_order_date, c.registration_date) BETWEEN 4 AND 7 THEN 1 END) AS first_week,
    COUNT(CASE WHEN DATEDIFF(c.first_order_date, c.registration_date) > 7 THEN 1 END) AS after_first_week
FROM customers c
GROUP BY YEAR(c.registration_date), MONTH(c.registration_date)
ORDER BY year, month;