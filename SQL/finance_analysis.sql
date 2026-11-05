CREATE DATABASE finance_analysis;
USE finance_analysis;


CREATE TABLE departments (
	   department_id INT PRIMARY KEY, 
       department_name VARCHAR(100)
);

INSERT INTO departments (department_id, department_name)
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Operations'),
(4, 'Finance'),
(5, 'Human Resources');

SELECT * FROM departments;

CREATE TABLE revenue(
       revenue_id INT PRIMARY KEY,
       department_id INT,
       month DATE,
       revenue_amount DECIMAL(12,2),
       FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO revenue (revenue_id, department_id, month, revenue_amount)
VALUES
(1,1,'2025-01-01',185000),(2,2,'2025-01-01',95000),(3,3,'2025-01-01',120000),(4,4,'2025-01-01',45000),(5,5,'2025-01-01',15000),
(6,1,'2025-02-01',192000),(7,2,'2025-02-01',102000),(8,3,'2025-02-01',125000),(9,4,'2025-02-01',47000),(10,5,'2025-02-01',15500),
(11,1,'2025-03-01',210000),(12,2,'2025-03-01',108000),(13,3,'2025-03-01',130000),(14,4,'2025-03-01',48000),(15,5,'2025-03-01',16000),
(16,1,'2025-04-01',205000),(17,2,'2025-04-01',110000),(18,3,'2025-04-01',132000),(19,4,'2025-04-01',49000),(20,5,'2025-04-01',16200),
(21,1,'2025-05-01',225000),(22,2,'2025-05-01',115000),(23,3,'2025-05-01',138000),(24,4,'2025-05-01',51000),(25,5,'2025-05-01',16800),
(26,1,'2025-06-01',238000),(27,2,'2025-06-01',121000),(28,3,'2025-06-01',142000),(29,4,'2025-06-01',53000),(30,5,'2025-06-01',17200),
(31,1,'2025-07-01',245000),(32,2,'2025-07-01',125000),(33,3,'2025-07-01',145000),(34,4,'2025-07-01',55000),(35,5,'2025-07-01',17500),
(36,1,'2025-08-01',232000),(37,2,'2025-08-01',118000),(38,3,'2025-08-01',140000),(39,4,'2025-08-01',54000),(40,5,'2025-08-01',17000),
(41,1,'2025-09-01',255000),(42,2,'2025-09-01',130000),(43,3,'2025-09-01',150000),(44,4,'2025-09-01',57000),(45,5,'2025-09-01',18000),
(46,1,'2025-10-01',265000),(47,2,'2025-10-01',135000),(48,3,'2025-10-01',155000),(49,4,'2025-10-01',59000),(50,5,'2025-10-01',18500),
(51,1,'2025-11-01',280000),(52,2,'2025-11-01',142000),(53,3,'2025-11-01',160000),(54,4,'2025-11-01',61000),(55,5,'2025-11-01',19000),
(56,1,'2025-12-01',310000),(57,2,'2025-12-01',155000),(58,3,'2025-12-01',175000),(59,4,'2025-12-01',65000),(60,5,'2025-12-01',20000);


CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,
    department_id INT,
    month DATE,
    expense_category VARCHAR(100),
    expense_amount DECIMAL(12,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO expenses
(expense_id, department_id, month, expense_category, expense_amount)
VALUES
(1,1,'2025-01-01','Salaries',60000),
(2,1,'2025-01-01','Marketing',18000),
(3,1,'2025-01-01','Operations',12000),
(4,2,'2025-01-01','Salaries',45000),
(5,2,'2025-01-01','Marketing',22000),
(6,2,'2025-01-01','Operations',9000),
(7,3,'2025-01-01','Salaries',55000),
(8,3,'2025-01-01','Marketing',8000),
(9,3,'2025-01-01','Operations',30000),
(10,4,'2025-01-01','Salaries',50000),
(11,4,'2025-01-01','Marketing',5000),
(12,4,'2025-01-01','Operations',7000),
(13,5,'2025-01-01','Salaries',35000),
(14,5,'2025-01-01','Marketing',3000),
(15,5,'2025-01-01','Operations',4000),
(16,1,'2025-02-01','Salaries',61200),
(17,1,'2025-02-01','Marketing',18360),
(18,1,'2025-02-01','Operations',12240),
(19,2,'2025-02-01','Salaries',45900),
(20,2,'2025-02-01','Marketing',22440),
(21,2,'2025-02-01','Operations',9180),
(22,3,'2025-02-01','Salaries',56100),
(23,3,'2025-02-01','Marketing',8160),
(24,3,'2025-02-01','Operations',30600),
(25,4,'2025-02-01','Salaries',51000),
(26,4,'2025-02-01','Marketing',5100),
(27,4,'2025-02-01','Operations',7140),
(28,5,'2025-02-01','Salaries',35700),
(29,5,'2025-02-01','Marketing',3060),
(30,5,'2025-02-01','Operations',4080),
(31,1,'2025-03-01','Salaries',62400),
(32,1,'2025-03-01','Marketing',18720),
(33,1,'2025-03-01','Operations',12480),
(34,2,'2025-03-01','Salaries',46800),
(35,2,'2025-03-01','Marketing',22880),
(36,2,'2025-03-01','Operations',9360),
(37,3,'2025-03-01','Salaries',57200),
(38,3,'2025-03-01','Marketing',8320),
(39,3,'2025-03-01','Operations',31200),
(40,4,'2025-03-01','Salaries',52000),
(41,4,'2025-03-01','Marketing',5200),
(42,4,'2025-03-01','Operations',7280),
(43,5,'2025-03-01','Salaries',36400),
(44,5,'2025-03-01','Marketing',3120),
(45,5,'2025-03-01','Operations',4160);

INSERT INTO expenses
(expense_id, department_id, month, expense_category, expense_amount)
VALUES
-- APRIL
(46,1,'2025-04-01','Salaries',61800),
(47,1,'2025-04-01','Marketing',18540),
(48,1,'2025-04-01','Operations',12360),
(49,2,'2025-04-01','Salaries',46350),
(50,2,'2025-04-01','Marketing',22660),
(51,2,'2025-04-01','Operations',9270),
(52,3,'2025-04-01','Salaries',56650),
(53,3,'2025-04-01','Marketing',8240),
(54,3,'2025-04-01','Operations',30900),
(55,4,'2025-04-01','Salaries',51500),
(56,4,'2025-04-01','Marketing',5150),
(57,4,'2025-04-01','Operations',7210),
(58,5,'2025-04-01','Salaries',36050),
(59,5,'2025-04-01','Marketing',3090),
(60,5,'2025-04-01','Operations',4120),

-- MAY
(61,1,'2025-05-01','Salaries',63600),
(62,1,'2025-05-01','Marketing',19080),
(63,1,'2025-05-01','Operations',12720),
(64,2,'2025-05-01','Salaries',47700),
(65,2,'2025-05-01','Marketing',23320),
(66,2,'2025-05-01','Operations',9540),
(67,3,'2025-05-01','Salaries',58300),
(68,3,'2025-05-01','Marketing',8480),
(69,3,'2025-05-01','Operations',31800),
(70,4,'2025-05-01','Salaries',53000),
(71,4,'2025-05-01','Marketing',5300),
(72,4,'2025-05-01','Operations',7420),
(73,5,'2025-05-01','Salaries',37100),
(74,5,'2025-05-01','Marketing',3180),
(75,5,'2025-05-01','Operations',4240),

-- JUNE
(76,1,'2025-06-01','Salaries',64800),
(77,1,'2025-06-01','Marketing',19440),
(78,1,'2025-06-01','Operations',12960),
(79,2,'2025-06-01','Salaries',48600),
(80,2,'2025-06-01','Marketing',23760),
(81,2,'2025-06-01','Operations',9720),
(82,3,'2025-06-01','Salaries',59400),
(83,3,'2025-06-01','Marketing',8640),
(84,3,'2025-06-01','Operations',32400),
(85,4,'2025-06-01','Salaries',54000),
(86,4,'2025-06-01','Marketing',5400),
(87,4,'2025-06-01','Operations',7560),
(88,5,'2025-06-01','Salaries',37800),
(89,5,'2025-06-01','Marketing',3240),
(90,5,'2025-06-01','Operations',4320),

-- JULY
(91,1,'2025-07-01','Salaries',66000),
(92,1,'2025-07-01','Marketing',19800),
(93,1,'2025-07-01','Operations',13200),
(94,2,'2025-07-01','Salaries',49500),
(95,2,'2025-07-01','Marketing',24200),
(96,2,'2025-07-01','Operations',9900),
(97,3,'2025-07-01','Salaries',60500),
(98,3,'2025-07-01','Marketing',8800),
(99,3,'2025-07-01','Operations',33000),
(100,4,'2025-07-01','Salaries',55000),
(101,4,'2025-07-01','Marketing',5500),
(102,4,'2025-07-01','Operations',7700),
(103,5,'2025-07-01','Salaries',38500),
(104,5,'2025-07-01','Marketing',3300),
(105,5,'2025-07-01','Operations',4400),

-- AUGUST
(106,1,'2025-08-01','Salaries',65400),
(107,1,'2025-08-01','Marketing',19620),
(108,1,'2025-08-01','Operations',13080),
(109,2,'2025-08-01','Salaries',49050),
(110,2,'2025-08-01','Marketing',23980),
(111,2,'2025-08-01','Operations',9810),
(112,3,'2025-08-01','Salaries',59950),
(113,3,'2025-08-01','Marketing',8720),
(114,3,'2025-08-01','Operations',32700),
(115,4,'2025-08-01','Salaries',54500),
(116,4,'2025-08-01','Marketing',5450),
(117,4,'2025-08-01','Operations',7630),
(118,5,'2025-08-01','Salaries',38150),
(119,5,'2025-08-01','Marketing',3270),
(120,5,'2025-08-01','Operations',4360),

-- SEPTEMBER
(121,1,'2025-09-01','Salaries',67200),
(122,1,'2025-09-01','Marketing',20160),
(123,1,'2025-09-01','Operations',13440),
(124,2,'2025-09-01','Salaries',50400),
(125,2,'2025-09-01','Marketing',24640),
(126,2,'2025-09-01','Operations',10080),
(127,3,'2025-09-01','Salaries',61600),
(128,3,'2025-09-01','Marketing',8960),
(129,3,'2025-09-01','Operations',33600),
(130,4,'2025-09-01','Salaries',56000),
(131,4,'2025-09-01','Marketing',5600),
(132,4,'2025-09-01','Operations',7840),
(133,5,'2025-09-01','Salaries',39200),
(134,5,'2025-09-01','Marketing',3360),
(135,5,'2025-09-01','Operations',4480),

-- OCTOBER
(136,1,'2025-10-01','Salaries',69000),
(137,1,'2025-10-01','Marketing',20700),
(138,1,'2025-10-01','Operations',13800),
(139,2,'2025-10-01','Salaries',51750),
(140,2,'2025-10-01','Marketing',25300),
(141,2,'2025-10-01','Operations',10350),
(142,3,'2025-10-01','Salaries',63250),
(143,3,'2025-10-01','Marketing',9200),
(144,3,'2025-10-01','Operations',34500),
(145,4,'2025-10-01','Salaries',57500),
(146,4,'2025-10-01','Marketing',5750),
(147,4,'2025-10-01','Operations',8050),
(148,5,'2025-10-01','Salaries',40250),
(149,5,'2025-10-01','Marketing',3450),
(150,5,'2025-10-01','Operations',4600),

-- NOVEMBER
(151,1,'2025-11-01','Salaries',70800),
(152,1,'2025-11-01','Marketing',21240),
(153,1,'2025-11-01','Operations',14160),
(154,2,'2025-11-01','Salaries',53100),
(155,2,'2025-11-01','Marketing',25960),
(156,2,'2025-11-01','Operations',10620),
(157,3,'2025-11-01','Salaries',64900),
(158,3,'2025-11-01','Marketing',9440),
(159,3,'2025-11-01','Operations',35400),
(160,4,'2025-11-01','Salaries',59000),
(161,4,'2025-11-01','Marketing',5900),
(162,4,'2025-11-01','Operations',8260),
(163,5,'2025-11-01','Salaries',41300),
(164,5,'2025-11-01','Marketing',3540),
(165,5,'2025-11-01','Operations',4720),

-- DECEMBER
(166,1,'2025-12-01','Salaries',73200),
(167,1,'2025-12-01','Marketing',21960),
(168,1,'2025-12-01','Operations',14640),
(169,2,'2025-12-01','Salaries',54900),
(170,2,'2025-12-01','Marketing',26840),
(171,2,'2025-12-01','Operations',10980),
(172,3,'2025-12-01','Salaries',67100),
(173,3,'2025-12-01','Marketing',9760),
(174,3,'2025-12-01','Operations',36600),
(175,4,'2025-12-01','Salaries',61000),
(176,4,'2025-12-01','Marketing',6100),
(177,4,'2025-12-01','Operations',8540),
(178,5,'2025-12-01','Salaries',42700),
(179,5,'2025-12-01','Marketing',3660),
(180,5,'2025-12-01','Operations',4880);

SELECT COUNT(*) FROM expenses;

CREATE TABLE budget (
    budget_id INT PRIMARY KEY,
    department_id INT,
    month DATE,
    budget_amount DECIMAL(12,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO budget (budget_id, department_id, month, budget_amount)
VALUES
(1,1,'2025-01-01',94500),
(2,2,'2025-01-01',79800),
(3,3,'2025-01-01',97650),
(4,4,'2025-01-01',65100),
(5,5,'2025-01-01',44100),
(6,1,'2025-02-01',96600),
(7,2,'2025-02-01',81900),
(8,3,'2025-02-01',102000),
(9,4,'2025-02-01',67200),
(10,5,'2025-02-01',44900),
(11,1,'2025-03-01',98700),
(12,2,'2025-03-01',84000),
(13,3,'2025-03-01',104000),
(14,4,'2025-03-01',68600),
(15,5,'2025-03-01',46200),
(16,1,'2025-04-01',97600),
(17,2,'2025-04-01',85000),
(18,3,'2025-04-01',106000),
(19,4,'2025-04-01',70000),
(20,5,'2025-04-01',47000),
(21,1,'2025-05-01',101000),
(22,2,'2025-05-01',87500),
(23,3,'2025-05-01',109000),
(24,4,'2025-05-01',72000),
(25,5,'2025-05-01',48500),
(26,1,'2025-06-01',106000),
(27,2,'2025-06-01',90000),
(28,3,'2025-06-01',113000),
(29,4,'2025-06-01',74000),
(30,5,'2025-06-01',50000),
(31,1,'2025-07-01',108000),
(32,2,'2025-07-01',92000),
(33,3,'2025-07-01',116000),
(34,4,'2025-07-01',76000),
(35,5,'2025-07-01',51000),
(36,1,'2025-08-01',105000),
(37,2,'2025-08-01',91000),
(38,3,'2025-08-01',114000),
(39,4,'2025-08-01',75000),
(40,5,'2025-08-01',50000),
(41,1,'2025-09-01',111000),
(42,2,'2025-09-01',95000),
(43,3,'2025-09-01',121000),
(44,4,'2025-09-01',78000),
(45,5,'2025-09-01',53000),
(46,1,'2025-10-01',114000),
(47,2,'2025-10-01',98000),
(48,3,'2025-10-01',125000),
(49,4,'2025-10-01',80000),
(50,5,'2025-10-01',55000),
(51,1,'2025-11-01',118000),
(52,2,'2025-11-01',102000),
(53,3,'2025-11-01',130000),
(54,4,'2025-11-01',83000),
(55,5,'2025-11-01',57000),
(56,1,'2025-12-01',124000),
(57,2,'2025-12-01',108000),
(58,3,'2025-12-01',137000),
(59,4,'2025-12-01',88000),
(60,5,'2025-12-01',60000);


-- Q1. Calculate Total Revenue
SELECT SUM(r.revenue_amount) AS total_revenue
FROM revenue AS r;

-- Q2. Calculate Total Expenses
SELECT SUM(e.expense_amount) AS total_expense
FROM expenses as e;

-- Q3. Calculate Net Profit
SELECT 
       (SELECT SUM(revenue_amount) FROM revenue)
       -
       (SELECT SUM(expense_amount) FROM expenses) AS net_profit;
       
-- Q4. Calculate Total Revenue by Department
SELECT d.department_name, SUM(r.revenue_amount) AS total_revenu
FROM departments AS d
INNER JOIN revenue AS r
ON d.department_id = r.revenue_id
GROUP BY d.department_name;

-- Q5. Calculate Total Expenses by Department
SELECT
    d.department_name,
    SUM(e.expense_amount) AS total_expense
FROM expenses AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Q6. Find the Department with the Highest Net Profit
SELECT
    d.department_name,
    r.total_revenue - e.total_expenses AS net_profit
FROM departments AS d
INNER JOIN (
    SELECT
        department_id,
        SUM(revenue_amount) AS total_revenue
    FROM revenue
    GROUP BY department_id
) AS r
    ON d.department_id = r.department_id
INNER JOIN (
    SELECT
        department_id,
        SUM(expense_amount) AS total_expenses
    FROM expenses
    GROUP BY department_id
) AS e
    ON d.department_id = e.department_id
ORDER BY net_profit DESC
LIMIT 1;

-- Q7. Calculate Monthly Revenue Variance by Department
SELECT
    d.department_name,
    DATE_FORMAT(r.month, '%b %Y') AS month,
    r.total_revenue - b.total_budget AS revenue_variance
FROM departments AS d
INNER JOIN (
    SELECT
        department_id,
        month,
        SUM(revenue_amount) AS total_revenue
    FROM revenue
    GROUP BY department_id,month
) AS r
    ON r.department_id = d.department_id
INNER JOIN (
    SELECT
        department_id,
        month,
        SUM(budget_amount) AS total_budget
    FROM budget
    GROUP BY department_id, month
) AS b
    ON b.department_id = d.department_id
    AND r.month = b.month
ORDER BY revenue_variance DESC;

-- Q8. Find the Department with the Highest Total Expenses
SELECT
    d.department_name,
    SUM(e.expense_amount) AS total_expense
FROM departments AS d
INNER JOIN expenses AS e
    ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY total_expense DESC
LIMIT 1;

-- Q9. Calculate Monthly Total Expenses
SELECT
    DATE_FORMAT(month, '%b %Y') AS month,
    SUM(expense_amount) AS total_amount
FROM expenses
GROUP BY month
ORDER BY month ASC;

-- Q10. Calculate Total Expenses by Category
SELECT
    e.expense_category,
    SUM(e.expense_amount) AS total_expenses
FROM expenses AS e
GROUP BY e.expense_category
ORDER BY total_expenses DESC;

-- Q11. Find the Department with the Highest Annual Budget
SELECT
    d.department_name,
    SUM(b.budget_amount) AS total_budget
FROM departments AS d
INNER JOIN budget AS b
    ON d.department_id = b.department_id
GROUP BY d.department_name
ORDER BY total_budget DESC
LIMIT 1;

-- Q12. Calculate Monthly Total Revenue
SELECT
    DATE_FORMAT(r.month, '%b %Y') AS month,
    SUM(r.revenue_amount) AS total_revenue
FROM revenue AS r
GROUP BY r.month
ORDER BY r.month ASC;

-- Q13. Calculate Monthly Expenses by Department
SELECT
    d.department_name,
    DATE_FORMAT(e.month, '%b %Y') AS month,
    SUM(e.expense_amount) AS total_expense
FROM departments AS d
INNER JOIN expenses AS e
    ON d.department_id = e.department_id
GROUP BY
    d.department_name,
    e.month
ORDER BY
    e.month ASC,
    d.department_name ASC;
    
-- Q14. Calculate Total Revenue, Budget, and Revenue Variance by Department
SELECT
    d.department_name,
    r.total_revenue,
    b.total_budget,
    r.total_revenue - b.total_budget AS revenue_variance
FROM departments AS d
INNER JOIN (
    SELECT
        department_id,
        SUM(revenue_amount) AS total_revenue
    FROM revenue
    GROUP BY department_id
) AS r
    ON d.department_id = r.department_id
INNER JOIN (
    SELECT
        department_id,
        SUM(budget_amount) AS total_budget
    FROM budget
    GROUP BY department_id
) AS b
    ON d.department_id = b.department_id

ORDER BY d.department_name ASC;
    
-- Q15. Find the Top 3 Departments by Net Profit
SELECT
    d.department_name,
    r.total_revenue,
    e.total_expense,
    r.total_revenue - e.total_expense AS net_profit
FROM departments AS d
INNER JOIN (
    SELECT
        department_id,
        SUM(revenue_amount) AS total_revenue
    FROM revenue
    GROUP BY department_id
) AS r
    ON d.department_id = r.department_id
INNER JOIN (
    SELECT
        department_id,
        SUM(expense_amount) AS total_expense
    FROM expenses
    GROUP BY department_id
) AS e
    ON d.department_id = e.department_id
ORDER BY net_profit DESC
LIMIT 3;
 
 -- Q16. Find Months Where Total Expenses Exceed ₹400,000
SELECT
    DATE_FORMAT(month, '%b %Y') AS month,
    SUM(expense_amount) AS total_expenses
FROM expenses
GROUP BY month
HAVING SUM(expense_amount) > 400000
ORDER BY total_expenses DESC;

-- Q17. Find Departments Where Annual Expenses Exceed Annual Budget
SELECT
    d.department_name,
    e.total_expense,
    b.total_budget
FROM departments AS d
INNER JOIN (
    SELECT
        department_id,
        SUM(expense_amount) AS total_expense
    FROM expenses
    GROUP BY department_id
) AS e
    ON e.department_id = d.department_id
INNER JOIN (
    SELECT
        department_id,
        SUM(budget_amount) AS total_budget
    FROM budget
    GROUP BY department_id
) AS b
    ON b.department_id = d.department_id
WHERE e.total_expense > b.total_budget;

-- Q18. Find the Department with the Lowest Net Profit
SELECT
    d.department_name,
    r.total_revenue - e.total_expenses AS net_profit
FROM departments AS d
INNER JOIN (
    SELECT
        department_id,
        SUM(revenue_amount) AS total_revenue
    FROM revenue
    GROUP BY department_id
) AS r
    ON d.department_id = r.department_id
INNER JOIN (
    SELECT
        department_id,
        SUM(expense_amount) AS total_expenses
    FROM expenses
    GROUP BY department_id
) AS e
    ON d.department_id = e.department_id
ORDER BY net_profit ASC
LIMIT 1;

-- Q19. Find the Month with the Highest Total Revenue
SELECT 
	 date_format(month, '%b %Y') AS month,
	 SUM(r.revenue_amount) AS total_revenue
FROM revenue AS r
GROUP BY month
ORDER BY total_revenue DESC
LIMIT 1;

-- Q20. Find the Department with the Highest Revenue-to-Expense Ratio
SELECT
    d.department_name,
    r.total_revenue,
    e.total_expense,
    r.total_revenue / NULLIF(e.total_expense, 0)
        AS revenue_expense_ratio
FROM departments AS d
INNER JOIN (
    SELECT
        department_id,
        SUM(revenue_amount) AS total_revenue
    FROM revenue
    GROUP BY department_id
) AS r
    ON d.department_id = r.department_id
INNER JOIN (
    SELECT
        department_id,
        SUM(expense_amount) AS total_expense
    FROM expenses
    GROUP BY department_id
) AS e
    ON d.department_id = e.department_id
ORDER BY revenue_expense_ratio DESC
LIMIT 1;

