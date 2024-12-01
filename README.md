# Database-Management
# F1 Database Management System - README

## Overview
This F1 Database Management System is a comprehensive solution for managing data related to Formula 1 racing. It includes information about drivers, teams, races, circuits, and results. The database is built using MySQL and includes features like stored procedures, triggers, and Python integration for database interaction.

The project includes multiple SQL scripts for creating tables, inserting values, and handling database operations. A Python script provides a user-friendly interface for querying and updating the database.

---

## Features
- **Database Management:**
  - Create and manage tables using `createTables.sql`.
  - Insert data using `insertValues.sql`.

- **Stored Procedures:** Automate operations like adding, updating, and retrieving data.
- **Triggers:** Enforce data integrity and automate tasks.
- **Python Integration:** Use `Database1.py` for interacting with the database.

---

## File Structure
### SQL Scripts
- `createTables.sql`: Script to create database tables.
- `insertValues.sql`: Script to insert initial data.
- `StoredProcedure1.sql`: Contains stored procedures for managing database operations.
- `Trigger1.sql`: Includes triggers for automating tasks and maintaining data integrity.
- `questions.sql`: Example queries for database interactions.
- `view1.sql`: Creates views for simplified querying.

### Documentation
- `ER&Normalisation.pdf`: Documentation on database design and normalization.
- `FINAL DOCUMENTATION DBS.pdf`: Detailed explanation of the database schema and functionality.
- `User Guide.pdf`: Step-by-step instructions for setting up and using the database.

### Python Script
- `Database1.py`: Python program for connecting to the MySQL database and performing operations through a command-line interface.

---

## Getting Started

### Prerequisites
- MySQL Server installed on your machine.
- Python 3.x with `mysql-connector` library installed.

### Setting Up the Database
1. **Connect to MySQL:**
   ```bash
   mysql -u <username> -p
   ```
2. **Create and Select Database:**
   ```sql
   CREATE DATABASE final;
   USE final;
   ```
3. **Source SQL Files:**
   Use the following commands to execute the provided SQL scripts:
   ```sql
   SOURCE createTables.sql;
   SOURCE insertValues.sql;
   ```

---

## User Guide
### Running the Python Script
1. Run the Python script:
   ```bash
   python Database1.py
   ```
2. Input your MySQL username, password, and database name when prompted.
3. Choose an operation from the displayed menu:
   - View driver table
   - Display team data
   - Insert more values into the database
   - Retrieve data like drivers with multiple wins or top-scoring teams

### Key SQL Operations
- Add new data using stored procedures:
  ```sql
  CALL AddDriver('Lewis', 'Hamilton', '1985-01-07', 'British', 1);
  ```
- Query results using views or predefined queries in `questions.sql`.

---

## SQL Features
### Stored Procedures
- Automate adding and updating data, such as adding a new race or updating team information.

### Triggers
- Ensure data integrity, such as logging changes to the `Results` table or validating team updates.

### Views
- Predefined views simplify querying complex data relationships.

---

## Support
For assistance, refer to the documentation files or contact the project maintainer.

---

*Enjoy managing your F1 data! 🏎️*
