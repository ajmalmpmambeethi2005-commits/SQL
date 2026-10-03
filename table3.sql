CREATE TABLE cus (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO cus (customer_id, name, city)
VALUES
(1, 'Ajmal', 'Kochi'),
(2, 'Rahul', 'Calicut'),
(3, 'Anu', 'Kochi'),
(4, 'Aman', 'Kannur'),
(5, 'John', 'Malappuram');

SELECT * FROM cus;