-- insert into Events table (EventID, EventName, EventType, Startdate, Enddate) 
insert into Events values (1, 'Tech Conference', 'Conference', '2024-01-15', '2024-01-17');
insert into Events values (2, 'Music Festival', 'Festival', '2024-02-20', '2024-02-23');
insert into Events values (3, 'Art Exhibition', 'Exhibition', '2024-03-01', '2024-03-05');
insert into Events values (4, 'Sports Gala', 'Sports', '2024-04-10', '2024-04-12');
insert into Events values (5, 'Food Festival', 'Festival', '2024-05-25', '2024-05-27');

-- insert into Venues table (VenueID, VenueName, Location, Capacity) 
insert into Venues values (1, 'Lahore Expo Center', 'Lahore, Pakistan', 5000);
insert into Venues values (2, 'Karachi Arena', 'Karachi, Pakistan', 3500);
insert into Venues values (3, 'Islamabad Convention Center', 'Islamabad, Pakistan', 2000);
insert into Venues values (4, 'Rawalpindi Stadium', 'Rawalpindi, Pakistan', 8000);
insert into Venues values (5, 'Karachi Food Plaza', 'Karachi, Pakistan', 3000);

-- insert into Employees table (All male employees with Gmail emails)
insert into Employees values (1, 'John', 'Doe', 'johndoe@gmail.com', '555-0101', 'Manager');
insert into Employees values (2, 'James', 'Smith', 'jamessmith@gmail.com', '555-0102', 'Coordinator');
insert into Employees values (3, 'Robert', 'Johnson', 'robertjohnson@gmail.com', '555-0103', 'Supervisor');
insert into Employees values (4, 'Michael', 'Williams', 'michaelwilliams@gmail.com', '555-0104', 'Assistant');
insert into Employees values (5, 'David', 'Brown', 'davidbrown@gmail.com', '555-0105', 'Technician');

-- insert into EventSchedules table (ScheduleID, EventID, VenueID, Scheduledate, Starttime, Endtime) 
insert into EventSchedules values (1, 1, 1, '2024-01-15', '09:00:00', '17:00:00');
insert into EventSchedules values (2, 2, 2, '2024-02-20', '10:00:00', '18:00:00');
insert into EventSchedules values (3, 3, 3, '2024-03-01', '11:00:00', '19:00:00');
insert into EventSchedules values (4, 4, 4, '2024-04-10', '08:00:00', '16:00:00');
insert into EventSchedules values (5, 5, 5, '2024-05-25', '12:00:00', '20:00:00');

-- insert into EmployeeEventSchedule table (ScheduleID, EmployeeID) 
insert into EmployeeEventSchedule values (1, 1);
insert into EmployeeEventSchedule values (1, 2);
insert into EmployeeEventSchedule values (2, 3);
insert into EmployeeEventSchedule values (2, 4);
insert into EmployeeEventSchedule values (5, 5);

-- insert into Attendees table(AttendeeID, FirstName, LastName, Email, Phone) 
insert into Attendees values (1, 'William', 'Taylor', 'williamtaylor@gmail.com', '555-1001');
insert into Attendees values (2, 'Benjamin', 'Moore', 'benjaminmoore@gmail.com', '555-1002');
insert into Attendees values (3, 'Samuel', 'Jackson', 'samueljackson@gmail.com', '555-1003');
insert into Attendees values (4, 'Lucas', 'Martinez', 'lucasmartinez@gmail.com', '555-1004');
insert into Attendees values (5, 'Oliver', 'Hernandez', 'oliverhernandez@gmail.com', '555-1005');

-- insert into Registrations table
insert into Registrations values (1, 1, 1, '2024-01-10');
insert into Registrations values (2, 2, 2, '2024-02-15');
insert into Registrations values (3, 3, 3, '2024-02-25');
insert into Registrations values (4, 4, 4, '2024-04-05');
insert into Registrations values (5, 5, 5, '2024-05-15');

-- insert into Tickets table (TicketID, RegistrationID, TicketType, Price)
insert into Tickets values (1, 1, 'General Admission', 50.00);
insert into Tickets values (2, 2, 'VIP', 150.00);
insert into Tickets values (3, 3, 'General Admission', 60.00);
insert into Tickets values (4, 4, 'VIP', 180.00);
insert into Tickets values (5, 5, 'General Admission', 55.00);

-- insert into Sponsors table (SponsorID, SponsorName, ContactPerson, ContactEmail, ContactPhone) 
insert into Sponsors values (1, 'Tech Corp', 'John Miller', 'johnmiller@gmail.com', '555-2001');
insert into Sponsors values (2, 'MusicCo', 'David Clark', 'davidclark@gmail.com', '555-2002');
insert into Sponsors values (3, 'ArtHouse', 'Peter King', 'peterking@gmail.com', '555-2003');
insert into Sponsors values (4, 'Sportify', 'Jason Lee', 'jasonlee@gmail.com', '555-2004');
insert into Sponsors values (5, 'Foodies Inc.', 'Thomas Wright', 'thomaswright@gmail.com', '555-2005');

-- insert into EventSponsors table (EventID, SponsorID)
insert into EventSponsors values (1, 1);
insert into EventSponsors values (2, 2);
insert into EventSponsors values (3, 3);
insert into EventSponsors values (4, 4);
insert into EventSponsors values (5, 5);

-- insert into Vendors table (VendorID, VendorName, ServiceType, ContactPerson, ContactEmail, ContactPhone)
insert into Vendors values (1, 'TechSolutions', 'Tech Equipment', 'Matthew Scott', 'matthewscott@gmail.com', '555-3001');
insert into Vendors values (2, 'MusicWorks', 'Sound Systems', 'Daniel White', 'danielwhite@gmail.com', '555-3002');
insert into Vendors values (3, 'ArtExhibit', 'Artwork Display', 'Gary Evans', 'garyevans@gmail.com', '555-3003');
insert into Vendors values (4, 'SportEquip', 'Sports Gear', 'James Robinson', 'jamesrobinson@gmail.com', '555-3004');
insert into Vendors values (5, 'FoodTrucks', 'Food Services', 'Ethan Harris', 'ethanharris@gmail.com', '555-3005');

-- insert into EventVendors table (EventID, VendorID) 
insert into EventVendors values (1, 1);
insert into EventVendors values (2, 2);
insert into EventVendors values (3, 3);
insert into EventVendors values (4, 4);
insert into EventVendors values (5, 5);
