-- EventSchedules
CREATE VIEW EventSchedulesWithDetails AS
SELECT es.ScheduleID, es.EventID, ev.EventName, es.VenueID, v.VenueName, 
       es.Scheduledate, es.Starttime, es.Endtime
FROM EventSchedules es
JOIN Events ev ON es.EventID = ev.EventID
JOIN Venues v ON es.VenueID = v.VenueID;


-- Registrations
CREATE VIEW RegistrationsWithDetails AS
SELECT r.RegistrationID, r.EventID, ev.EventName, r.AttendeeID, a.FirstName, a.LastName, r.Registrationdate
FROM Registrations r
JOIN Events ev ON r.EventID = ev.EventID
JOIN Attendees a ON r.AttendeeID = a.AttendeeID;

-- Tickets
CREATE VIEW TicketsWithDetails AS
SELECT t.TicketID, t.RegistrationID, r.EventID, ev.EventName, r.AttendeeID, a.FirstName, a.LastName, 
       t.TicketType, t.Price
FROM Tickets t
JOIN Registrations r ON t.RegistrationID = r.RegistrationID
JOIN Events ev ON r.EventID = ev.EventID
JOIN Attendees a ON r.AttendeeID = a.AttendeeID;

-- EventSponsors
CREATE VIEW EventSponsorsWithDetails AS
SELECT es.EventID, ev.EventName, es.SponsorID, s.SponsorName
FROM EventSponsors es
JOIN Events ev ON es.EventID = ev.EventID
JOIN Sponsors s ON es.SponsorID = s.SponsorID;

-- EventVendors
CREATE VIEW EventVendorsWithDetails AS
SELECT ev.EventID, e.EventName, ev.VendorID, v.VendorName, v.ServiceType
FROM EventVendors ev
JOIN Events e ON ev.EventID = e.EventID
JOIN Vendors v ON ev.VendorID = v.VendorID;


select * from eventscheduleswithdetails;
select * from eventsponsorswithdetails;
select * from eventvendorswithdetails;
select * from registrationswithdetails;
select * from ticketswithdetails;