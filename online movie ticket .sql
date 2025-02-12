
CREATE DATABASE MovieTicketBooking;
USE MovieTicketBooking;
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    UserName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR(50)
);

-- Table: Movies
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    MovieName VARCHAR(100),
    Genre VARCHAR(50),
    Duration INT, -- in minutes
    Language VARCHAR(50),
    ReleaseDate DATE
);

-- Table: Theaters
CREATE TABLE Theaters (
    TheaterID INT PRIMARY KEY AUTO_INCREMENT,
    TheaterName VARCHAR(100),
    Location VARCHAR(100)
);

-- Table: Shows
CREATE TABLE Shows (
    ShowID INT PRIMARY KEY AUTO_INCREMENT,
    MovieID INT,
    TheaterID INT,
    ShowTime DATETIME,
    AvailableSeats INT,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (TheaterID) REFERENCES Theaters(TheaterID)
);

-- Table: Bookings
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ShowID INT,
    NumberOfSeats INT,
    BookingDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ShowID) REFERENCES Shows(ShowID)
);

-- Sample Data Insertion
INSERT INTO Users (UserName, Email, Password) VALUES 
('JohnDoe', 'john@example.com', 'password123'),
('JaneSmith', 'jane@example.com', 'securepass');

INSERT INTO Movies (MovieName, Genre, Duration, Language, ReleaseDate) VALUES 
('Avengers: Endgame', 'Action', 180, 'English', '2019-04-26'),
('Parasite', 'Thriller', 132, 'Korean', '2019-05-30');

INSERT INTO Theaters (TheaterName, Location) VALUES 
('PVR Cinemas', 'Downtown'),
('Inox', 'City Center');

INSERT INTO Shows (MovieID, TheaterID, ShowTime, AvailableSeats) VALUES 
(1, 1, '2025-02-15 18:00:00', 100),
(2, 2, '2025-02-15 20:00:00', 80);

INSERT INTO Bookings (UserID, ShowID, NumberOfSeats) VALUES 
(1, 1, 2),
(2, 2, 3);

-- Select all data for verification
SELECT * FROM Users;
SELECT * FROM Movies;
SELECT * FROM Theaters;
SELECT * FROM Shows;
SELECT * FROM Bookings;