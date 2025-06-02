-- 1. Index on EventName in Events table
create index Index_EventName on Events(EventName);

-- 2. Index on Scheduledate in EventSchedules table
create index Index_Scheduledate on EventSchedules(Scheduledate);

-- 3. Index on EventID in Registrations table
create index Index_EventID_Registrations on Registrations(EventID);

-- 4. Index on AttendeeID in Registrations table
create index Index_AttendeeID_Registrations on Registrations(AttendeeID);

-- 5. Index on SponsorName in Sponsors table
create index Index_SponsorName on Sponsors(SponsorName);