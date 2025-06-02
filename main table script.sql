use projects;
-- Create the tables
create table Events ( 
    EventID int primary key, 
    EventName varchar(255) not null, 
    EventType varchar(255) not null, 
    Startdate date not null, 
    Enddate date not null 
); 

create table Venues ( 
    VenueID int primary key, 
    VenueName varchar(255) not null, 
    Location varchar(255) not null, 
    Capacity int not null 
); 

create table Employees (
    EmployeeID int primary key,
    FirstName varchar(255) not null,
    LastName varchar(255) not null,
    Email varchar(255) not null unique,
    Phone varchar(255) not null unique,
    Position varchar(255) not null
);

create table EventSchedules ( 
    ScheduleID int primary key, 
    EventID int not null, 
    VenueID int not null, 
    Scheduledate date not null, 
    Starttime time not null, 
    Endtime time not null, 
    foreign key (VenueID) references Venues(VenueID),
    foreign key (EventID) references Events(EventID)
); 

create table EmployeeEventSchedule(
    ScheduleID int,
    EmployeeID int,
    primary key(ScheduleID, EmployeeID),
    foreign key (ScheduleID) references EventSchedules(ScheduleID), 
    foreign key (EmployeeID) references Employees(EmployeeID) 
    );
    
create table Attendees ( 
    AttendeeID int primary key, 
    FirstName varchar(255) not null, 
    LastName varchar(255) not null, 
    Email varchar(255) not null unique, 
    Phone varchar(255) not null unique
); 

create table Registrations ( 
    RegistrationID int primary key, 
    EventID int not null, 
    AttendeeID int not null, 
    Registrationdate date not null, 
    foreign key (EventID) references Events(EventID), 
    foreign key (AttendeeID) references Attendees(AttendeeID) 
); 

create table Tickets ( 
    TicketID int primary key, 
    RegistrationID int not null, 
    TicketType varchar(255) not null, 
    Price DECIMAL(10, 2) not null, 
    foreign key (RegistrationID) references Registrations(RegistrationID) 
); 

create table Sponsors ( 
    SponsorID int primary key, 
    SponsorName varchar(255) not null, 
    ContactPerson varchar(255) not null, 
    ContactEmail varchar(255) not null unique, 
    ContactPhone varchar(255) not null unique
); 

create table EventSponsors ( 
    EventID int not null, 
    SponsorID int not null, 
    primary key (EventID, SponsorID), 
    foreign key (EventID) references Events(EventID), 
    foreign key (SponsorID) references Sponsors(SponsorID) 
); 

create table Vendors ( 
    VendorID int primary key, 
    VendorName varchar(255) not null, 
    ServiceType varchar(255) not null, 
    ContactPerson varchar(255) not null, 
    ContactEmail varchar(255) not null unique, 
    ContactPhone varchar(255) not null unique
); 

create table EventVendors ( 
    EventID int not null, 
    VendorID int not null, 
    primary key (EventID, VendorID), 
    foreign key (EventID) references Events(EventID), 
    foreign key (VendorID) references Vendors(VendorID) 
);