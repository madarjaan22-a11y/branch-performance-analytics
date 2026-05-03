-- inserting branch data (basic master table)

INSERT INTO branches (branch_name, region, city, tier)
VALUES
('Bangalore North', 'South', 'Bangalore', 'Tier 1'),
('Bangalore South', 'South', 'Bangalore', 'Tier 1'),
('Mumbai Central', 'West', 'Mumbai', 'Tier 1'),
('Pune East', 'West', 'Pune', 'Tier 2'),
('Delhi West', 'North', 'Delhi', 'Tier 1'),
('Hyderabad', 'South', 'Hyderabad', 'Tier 2');


-- inserting monthly revenue data
-- each row = branch + month + actual vs target

INSERT INTO monthly_revenue (branch_id, month, revenue_actual, revenue_target)
VALUES

-- Bangalore North (mixed performance)
(1, '2024-01-01', 520000, 500000),
(1, '2024-02-01', 480000, 500000),
(1, '2024-03-01', 510000, 500000),

-- Bangalore South (consistently underperforming)
(2, '2024-01-01', 390000, 450000),
(2, '2024-02-01', 420000, 450000),
(2, '2024-03-01', 400000, 450000),

-- Mumbai Central (strong but not perfectly stable)
(3, '2024-01-01', 610000, 600000),
(3, '2024-02-01', 590000, 600000),
(3, '2024-03-01', 625000, 600000),

-- Pune East (mostly below target)
(4, '2024-01-01', 310000, 350000),
(4, '2024-02-01', 295000, 350000),
(4, '2024-03-01', 320000, 350000),

-- Delhi West (near target, slightly unstable)
(5, '2024-01-01', 480000, 480000),
(5, '2024-02-01', 460000, 480000),
(5, '2024-03-01', 490000, 480000),

-- Hyderabad (declining trend)
(6, '2024-01-01', 270000, 300000),
(6, '2024-02-01', 260000, 300000),
(6, '2024-03-01', 255000, 300000);