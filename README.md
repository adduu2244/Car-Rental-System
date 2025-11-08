🚗 Car Rental System
🧾 Project Overview

The Car Rental System is a database management mini project designed using MySQL.
It helps manage a car rental service by maintaining records of customers, cars, bookings, and payments in a structured and efficient manner.
This project demonstrates the core DBMS concepts such as:
Database design
DDL & DML operations
Joins and queries
Relational algebra
Normalization (up to 3NF)

🧩 Features
✅ Centralized database for car rental operations
✅ Normalized tables with proper primary and foreign keys
✅ SQL queries to manage and fetch customer, car, and booking details
✅ Join operations for combined data outputs
✅ Sample data insertion for testing and demonstration

🗄️ Database Design
Tables Used:
1.Customer
2.Car
3.Booking
4.Payment
Relationships:
One customer → many bookings
One car → many bookings
One booking → one payment

💻 Sample SQL Queries
SELECT c.name AS Customer, c.phone, c.license_no, c.address,
       car.model AS Car_Model, b.start_date, b.end_date, b.total_amount
FROM Booking b
JOIN Customer c ON b.cust_id = c.cust_id
JOIN Car car ON b.car_id = car.car_id;


Outputs Include:
Complete booking details (Customer + Car + Amount)
Available cars
Total revenue generated
Cars booked by specific customers

🧠 Concepts Used
Database Design & Normalization
DDL, DML, and JOIN Queries
Foreign Keys and Relationships
Relational Algebra Operations

🧪 Testing & Results
All queries executed successfully in MySQL Workbench, producing correct results for customer data, bookings, and total revenue.

🚀 Future Scope
Add a web interface using HTML, CSS, and PHP
Integrate online payment features
Implement real-time car availability tracking

🧠 References
MySQL 8.0 Documentation
TutorialsPoint – DBMS & SQL Concepts
GeeksforGeeks – SQL Joins and Normalization

👩‍💻 Author
Aditi Deepak Ghadigaonkar
B.Tech CSE Student | Aspiring Software Developer
aditighadigaonkar22@gmail.com
