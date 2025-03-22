create database expensetracker;

use expensetracker;

create table expenses (
id int auto_increment primary key,
date date not null,
description varchar (255),
category varchar (50) not null,
amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(50)
);
 
INSERT INTO expenses (date, description, category, amount, payment_method) 
VALUES
('2025-03-01', 'Groceries', 'Walmart groceries', 750.00, 'Mpesa'),
('2025-03-02', 'Rent', 'March rent payment', 4200.00, 'Bank Transfer'),
('2025-03-03', 'Utilities', 'Electricity bill', 600.75, 'Mpesa'),
('2025-03-04', 'Transport', 'Fare to and from work', 1250.00, 'Cash'),
('2025-03-05', 'Entertainment', 'Movie night', 150.00, 'Mpesa'),
('2025-03-06', 'Groceries', 'Trader Joel shopping', 450.00, 'Debit Card'),
('2025-03-07', 'Dining Out', 'Restaurant dinner', 850.00, 'Cash'),
('2025-03-08', 'dstv Subscription', 'Netflix monthly fee', 2150.00, 'Mpesa');

SELECT * FROM expenses;

SELECT date, category, amount FROM expenses;

SELECT * FROM expenses WHERE amount > 750;

SELECT * FROM expenses WHERE category = 'Groceries';

SELECT * FROM expenses WHERE payment_method = 'mpesa';

SELECT * FROM expenses ORDER BY amount Desc;

SELECT * FROM expenses ORDER BY date ASC;

SELECT SUM(amount) AS total_spent FROM expenses;











