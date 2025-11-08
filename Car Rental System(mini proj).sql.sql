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
   