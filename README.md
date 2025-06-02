# 🗃️ Event Management System - SQL Database Project

This project contains the design and structure of a relational SQL database for managing events. It covers all aspects of event planning, including scheduling, venue assignment, ticketing, employee participation, and stakeholder (vendor/sponsor) management.

---

## 📌 Overview

The database is normalized and includes key entities required to support a full-featured event management system. It ensures data integrity, scalability, and clear relationship mapping between participants, events, and operational roles.

---

## 🧩 ERD (Entity Relationship Diagram)

The ERD provided in this repository outlines all entities and their relationships. Major components include:

- `events`, `venues`, `attendees`, `employees`, `vendors`, `sponsors`
- Relationship tables: `eventSchedule`, `employeeEventSchedule`, `eventVendors`, `eventSponsors`, `registrations`, `tickets`

Refer to `ERD image.png` for visual reference.

---

## 🗂️ Major Tables

### `events`
- Stores core event details like name, type, and date range.

### `venues`
- Contains location details and capacity for hosting events.

### `attendees`
- Holds participant information.

### `employees`
- Represents internal staff and their assigned roles.

### `vendors` and `sponsors`
- Store service providers and financial contributors respectively.

### `registrations` and `tickets`
- Enable tracking of attendance and ticketing details.

### `eventSchedule`
- Connects events to venues and time slots.

### `eventVendors`, `eventSponsors`, `employeeEventSchedule`
- Support many-to-many relationships among events, vendors, sponsors, and employees.

---

## 🛠️ Technologies

- **Database**: MySQL (or any SQL-compatible RDBMS)
- **Design Tool**: MySQL Workbench / dbdiagram.io / Draw.io

---

## 🧪 How to Use

1. Review the ERD provided in the repository.
2. Use a database client (like MySQL Workbench) to implement the schema.
3. Insert sample data for testing.
4. Perform queries to simulate event registration, scheduling, and reporting.

---

## 📁 Folder Contents

```
.
├── ERD image.png             # Entity Relationship Diagram
├── README.md                 # Project overview
└── (Optional) SQL scripts    # Future schema creation scripts
```

---

## 👨‍💻 Contributors

- Solo Project

---

## 📜 License

This project is part of an academic assignment and is for educational use only.
