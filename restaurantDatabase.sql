CREATE DATABASE restaurant_reservations;
USE restaurant_reservations;
-- this is the customer table
CREATE TABLE Customers(
customerId INT NOT NULL AUTO_INCREMENT,
customerName VARCHAR (45) NOT NULL,
contactInfo VARCHAR (200),
PRIMARY KEY (customerId)
);
-- this is the reservations table 
CREATE TABLE Reservations(
reservationId INT NOT NULL AUTO_INCREMENT,
customerId INT NOT NULL, 
reservationTime DATETIME NOT NULL,
numberOfGuests INT NOT NULL,
specialRequests VARCHAR (200),
PRIMARY KEY (reservationId),
FOREIGN KEY (customerId) REFERENCES Customers(customerId)
);
-- this is the dining preferences table
CREATE TABLE diningPreferences(
preferenceId INT NOT NULL AUTO_INCREMENT,
customerId INT NOT NULL, 
favoriteTable VARCHAR (45),
dietaryRestrictions VARCHAR (200), 
PRIMARY KEY (preferenceId),
FOREIGN KEY (customerId) REFERENCES Customers(customerId)
); 
-- inserting data into Customers Table here
INSERT INTO Customers(customerName, contactInfo) VALUES
('Carla Morris', 'Cmorris@gmail.com'),
('Peter Griffin', 'FamilyGuy@fox.com'),
('Gojo Satoru', 'SixEyes@jjk.com'),
('Cloud Strife', 'ExSoldier@shinra.com');

-- inserting Data into Reservations Table
INSERT INTO Reservations (customerId, reservationTime, numberOfGuests, specialRequests) VALUES
(1, '2024-05-26 18:00:00', 3, 'Extra plates'),
(2, '2024-05-24 19:30:00', 5, 'High chair for baby'),
(3, '2024-05-30 20:00:00', 1, 'None'), 
(4, '2024-05-27 17:00:00', 6, 'Seating for Pet'); 

-- inserting data into Dining Preferences Table 
INSERT INTO diningPreferences ( customerId, favoriteTable, dietaryRestrictions) VALUES
(1,'Window', 'Treenut Allergy'), 
(2, 'Booth', 'None'), 
(3, 'Outdoor', 'None'), 
(4, 'Middle Table', 'Shellfish Allergy'); 













 





