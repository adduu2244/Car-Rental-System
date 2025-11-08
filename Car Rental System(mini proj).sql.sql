-- Customer Table 
CREATE TABLE Customer (
    cust_id INT AUTO_INCREMENT PRIMARY key,
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(50) UNIQUE,
    License_no VARCHAR(20) UNIQUE,
    Address VARCHAR(100)
    );
-- Car Table
CREATE TABLE Car (
	car_id INT AUTO_INCREMENT PRIMARY KEY,
	Model VARCHAR(50) NOT NULL,
    Type VARCHAR(30),
    Rent_per_Day Decimal(8,2),
    Status VARCHAR(10)
    );
-- Booking Table 
CREATE TABLE Booking (
	Booking_id INT PRIMARY KEY,
    cust_id INT,
    car_id INT,
    Start_date DATE,
    End_date DATE,
    Total_Amount DECIMAL(10,2),
    FOREIGN KEY (cust_id) REFERENCES Customer(cust_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
    );
-- PAYMENT Table 
   CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    payment_mode VARCHAR(20), -- Cash/Card/UPI
    payment_status VARCHAR(10), -- Paid/Unpaid
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);
-- Customers
INSERT INTO Customer (cust_id, Name, Phone, License_no, Address)
VALUES 
(1, 'Aditi', '9876543210', 'MH12345', 'Mumbai'),
(2, 'Khushi', '9876543211', 'MH12346', 'Pune');
SELECT * FROM Customer;
-- Cars
INSERT INTO Car (car_id, Model, Type, Rent_per_Day, Status)
VALUES 
(101, 'Hyundai i20', 'Hatchback', 1200.00, 'Available'),
(102, 'Honda City', 'Sedan', 1800.00, 'Available');
SELECT * FROM Car;
-- Bookings
INSERT INTO Booking (Booking_id, cust_id, car_id, Start_date, End_date, Total_Amount)
VALUES 
(1001, 1, 101, '2025-10-01', '2025-10-03', 3600.00),
(1002, 2, 102, '2025-10-05', '2025-10-07', 3600.00);
SELECT * FROM Booking;
-- Payments
INSERT INTO Payment (payment_id, booking_id, payment_mode, payment_status)
VALUES 
(5001, 1001, 'Card', 'Paid'),
(5002, 1002, 'Cash', 'Paid');
SELECT * FROM Payment;
-- Queries 
-- a) Show all bookings with customer & car info
SELECT c.name AS Customer, c.phone, c.license_no, c.address,
       car.model AS Car_Model, b.start_date, b.end_date, b.total_amount
FROM Booking b
JOIN Customer c ON b.cust_id = c.cust_id
JOIN Car car ON b.car_id = car.car_id;

-- b) Show available cars
SELECT * FROM Car WHERE status='Available';

-- c) Total revenue
SELECT SUM(total_amount) AS Total_Revenue FROM Booking;

-- d) Cars booked by a specific customer (Aditi)
SELECT car.model, b.start_date, b.end_date
FROM Booking b
JOIN Car car ON b.car_id = car.car_id
WHERE b.cust_id = 1;

