-- creating branches table (master data)

CREATE TABLE branches (
    branch_id SERIAL PRIMARY KEY,
    branch_name VARCHAR(100),
    region VARCHAR(50),
    city VARCHAR(50),
    tier VARCHAR(20)
);


-- creating monthly revenue table

CREATE TABLE monthly_revenue (
    revenue_id SERIAL PRIMARY KEY,
    branch_id INT REFERENCES branches(branch_id),
    month DATE,
    revenue_actual NUMERIC,
    revenue_target NUMERIC
);