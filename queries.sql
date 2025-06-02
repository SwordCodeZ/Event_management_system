-- SQL Queries Demonstrating Various Operations
-- selection
SELECT * FROM Events WHERE StartDate > '2024-01-01';

-- projection
SELECT EventName, EventType FROM Events;

-- conditional 
SELECT * FROM Events WHERE MONTH(StartDate) = 2;


-- Set
SELECT * FROM Attendees
WHERE AttendeeID IN (
  SELECT AttendeeID FROM Registrations
  WHERE MONTH(RegistrationDate) IN (1, 2)
);

-- join
SELECT e.EventName, s.SponsorName, s.ContactPerson
FROM Events e
JOIN EventSponsors es ON e.EventID = es.EventID
JOIN Sponsors s ON es.SponsorID = s.SponsorID;

-- aggression
SELECT SUM(Price) AS TotalRevenue FROM Tickets;

