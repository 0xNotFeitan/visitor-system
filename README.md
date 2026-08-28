# Visitor Management System

A web-based Visitor Management System designed to streamline visitor registration, identification, keycard allocation, visitor tracking, and administrative management.

The system provides role-based access control so that different categories of administrators have access to functions appropriate to their responsibilities.

## Features

- Visitor registration
- Visitor confirmation and token-based access
- Visitor check-in and check-out
- Visitor record management
- Keycard assignment and tracking
- Destination management
- Role-based administrative access
- Destination-specific administration
- Visitor record export
- Database backup functionality
- Notification management
- Visitor activity tracking
- Administrative dashboard
- Secure password hashing and verification

## User Roles

The system implements multiple administrative roles:

### Super Admin
Provides the highest level of administrative access and system management.

### Director
Provides management and oversight capabilities.

### Receptionist
Responsible primarily for visitor-related front-desk operations, including visitor check-in and check-out.

### Destination Admin
Manages activities associated with an assigned destination.

Access to system functions is restricted according to the authenticated user's role.

## Technology Stack

- **PHP** — Server-side application logic
- **MySQL** — Database management
- **HTML5** — Application structure
- **CSS3** — Styling and interface
- **JavaScript** — Client-side functionality
- **Bootstrap** — Interface components
- **XAMPP** — Local development environment

## Project Structure

```text
visitor-system/
│
├── admin_dashboard.php
├── admin_login.php
├── backup_records.php
├── checkout.php
├── confirmation.php
├── db.php
├── destinations.php
├── download.php
├── export_csv.php
├── export_data.php
├── index.php
├── logout.php
├── mark_notifications.php
├── records.php
├── style.css
├── submit.php
├── timeout.php
│
├── database/
│   └── visitor_system.sql
│
├── Picture1.png
├── Picture2.png
└── ui_logo-removebg-preview.png
```

## Database

The project uses a MySQL database named:

```text
visitor_db
```

The database contains tables for:

- `users`
- `visitors`
- `destinations`
- `keycards`
- `notifications`

The database schema and sanitized seed data are provided in:

```text
database/visitor_system.sql
```

The database uses foreign-key relationships between users, destinations, keycards, visitors, and notifications.

## Installation

### 1. Install XAMPP

Install XAMPP with Apache and MySQL.

### 2. Clone the Repository

```bash
git clone https://github.com/0xNotFeitan/visitor-system.git
```

Place the project inside the XAMPP `htdocs` directory:

```text
C:\xampp\htdocs\visitor-system
```

### 3. Start Apache and MySQL

Open the XAMPP Control Panel and start:

- Apache
- MySQL

### 4. Create the Database

Open phpMyAdmin and create a database named:

```text
visitor_db
```

Import:

```text
database/visitor_system.sql
```

into the database.

### 5. Configure the Database Connection

The local development database connection is configured in:

```text
db.php
```

The repository is configured for a typical local XAMPP/MySQL environment.

For production deployment, database credentials should be stored outside the repository and supplied through environment-specific configuration.

### 6. Run the Application

Open:

```text
http://localhost/visitor-system/
```

## Security

The project includes several security-related measures, including:

- Prepared SQL statements for database queries
- Password hashing and verification using PHP's password hashing functions
- Role-based access control
- Session-based authentication
- Sanitized database seed data
- `.gitignore` rules for local configuration and generated visitor data
- Visitor data backups excluded from version control
- CSV and JSON generated data excluded from version control

### Sensitive Data

Real visitor records and generated backup files should not be committed to the repository.

The `.gitignore` file excludes:

```text
.env
.env.*
backups/
backup/
*.csv
*.json
*.log
```

The database file included in the repository is intended to contain sanitized/sample data rather than production visitor information.

## Local Development

This project was developed and tested in a local XAMPP environment.

The application can be modified and tested locally using:

- Apache
- MySQL
- PHP
- phpMyAdmin

## Project Status

**Development status:** Functional / Academic Project

The system implements visitor management, administrative authentication, role-based access control, destination management, keycard management, visitor tracking, and data export functionality.

## License

This project is provided for educational and project-development purposes.