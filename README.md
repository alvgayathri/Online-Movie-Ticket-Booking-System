# Online Movie Ticket Booking System  

## Description  
This SQL project manages an online movie ticket booking system. It has tables for users, movies, theaters, shows, and bookings.  

## Tables  
1. **Users**: Stores user details (UserID, UserName, Email, Password).  
2. **Movies**: Contains movie details (MovieID, MovieName, Genre, Duration, Language, ReleaseDate).  
3. **Theaters**: Stores theater details (TheaterID, TheaterName, Location).  
4. **Shows**: Represents movie shows with available seats (ShowID, MovieID, TheaterID, ShowTime, AvailableSeats).  
5. **Bookings**: Tracks bookings (BookingID, UserID, ShowID, NumberOfSeats, BookingDate).  

## Features  
- User registration and ticket booking.  
- Lists movies and available shows.  
- Real-time seat availability.  

## How to Use  
1. Run the SQL script.  
2. Verify tables and sample data.  
3. Use `SELECT` queries to check data.  

## Conclusion  
This SQL script builds a simple movie ticket booking system with basic features.  
